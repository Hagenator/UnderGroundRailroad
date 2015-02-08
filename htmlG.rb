# This script will create a template website in the running directory
# script writer: Elijah Ellis
# Date written: 9/30/14


# opentags and closed tags contain the HTML tags for creating index.html
opentags =  ['<html>','<head>','<title>', '<body>']
closedtags = ['</html>','</head>','</title>', '</body>']


#all of the files that are going to be created
filenames = ['index.html','main.css','functions.js']

csslink = '<link rel="StyleSheet" href="main.css"> '
jslink = '<script language="javascript" type="text/javascript" href="functions.js"></script>'

#creates files
for x in 0..2
  filehandler = File.new(filenames[x], 'a')
end


#formats files
  file = File.open(Dir.pwd + '/index.html', 'w'){|f| f.write(opentags[0] + "\n\t" + opentags[1] + "\n\t\t" +  opentags[2] +  closedtags[2] + "\t\n\t\t" + csslink + "\t\n\t\t" + jslink + "\t\n\t" + closedtags[1] + "\n\t" + opentags[3] + "\n\t\t" + "\n\n\n\n\n\n\n\n\n\t" + closedtags[3] + "\n" + closedtags[0])}


