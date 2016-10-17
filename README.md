# simpleGraphViewer

To install just download the repository:
```
git clone https://github.com/jodyphelan/simpleGraphViewer.git
python -m SimpleHTTPServer
```
Point your browser to the ```localhost/8000``` file and start visualising.

The basic definition of your graph should be:
```
{
  "nodes":[
    {"id":"1"},
    {"id":"2"},
    {"id":"3"}
   ],
   "edges":[
     {"source":1,target:2},
     {"source":2,target:3}
    ]
}
```

You can add attributes like: ```col``` and ```shape``` to the node difinitions.


##QUICKSTART

I have included a parser for the graphs hosted on KONECT graph database. Try download one of their graphs and test the limits of this graph visualisation:
```
curl http://konect.uni-koblenz.de/downloads/tsv/ego-facebook.tar.bz2 > facebook.tar.bz2
tar -xf facebook.tar.bz2
perl parseGraph.pl ego-facebook/out.ego-facebook > large.json 
```

##Canvas Vs SVG
For larger graphs you might want to try out the ```canvas.html``` page which renders to canvas instead of the expensive DOM manipulation that comes with using SVG.

