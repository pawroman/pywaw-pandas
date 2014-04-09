# Launch HTTP server and watch notebook for changes
# Requires inotify-tools (inotifywait command)

python2 -m SimpleHTTPServer 8000 &
SERVER_PID=$!

python2 -m webbrowser -t http://127.0.0.1:8000

echo -e "HTTP server running on PID $SERVER_PID\n"

function quit {
    echo -e "\nKilling server..."
    kill $SERVER_PID

    exit
}

trap quit EXIT  # kill server on exit

# Now into infinite loop, waiting for file changes

echo "Watching for file changes..."

while :
do
    inotifywait pandas_pywaw.ipynb
    make
done

