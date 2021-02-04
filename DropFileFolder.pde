///**
// * DropFilesAndFolders demonstrates how to access the information of 
// * a file or folder that has been dragged into the sketch.
//*/

void dropEvent(DropEvent theDropEvent) {
  if(theDropEvent.isFile()) {
    // for further information see
    // http://java.sun.com/j2se/1.4.2/docs/api/java/io/File.html
    File myFile = theDropEvent.file();
    //println("\nisDirectory ? "+myFile.isDirectory()+"  /  isFile ? "+myFile.isFile());
    if(myFile.isDirectory()) {
      //println("listing the directory");
      
      // list the directory, not recursive, with the File api. returns File[].
      //println("\n\n### listFiles #############################\n");
      //println(myFile.listFiles());

      
      // list the directory recursively with listFilesAsArray. returns File[]
      //println("\n\n### listFilesAsArray recursive #############################\n");
      //println(theDropEvent.listFilesAsArray(myFile,true));
      
      
      // list the directory and control the depth of the search. returns File[]
      //println("\n\n### listFilesAsArray depth #############################\n");
      //println(theDropEvent.listFilesAsArray(myFile,2));
    }
  }
}
















//void dropEvent(DropEvent theDropEvent) {
//  if (theDropEvent.isFile()) {
//    // for further information see
//    // http://java.sun.com/j2se/1.4.2/docs/api/java/io/File.html
//    File myFile = theDropEvent.file();
//    println(filePos+" - "+"\nisDirectory ? "+myFile.isDirectory()+"  /  isFile ? "+myFile.isFile());

//    //fileList[count] = myFile;
//    myPlayList[filePos] = minim.loadFile(myFile.getAbsolutePath(), 1024);
//    myTitles[namePos] = myFile.getName();
//    if (myPlayList[filePos] == null) {
//      errorBool = true;
//      //playList();
//    } else
//    {
//      errorBool = false;
//      //title = myTitles[namePos];
//      filePos++;
//      namePos++;
//      //multiplier++;
//      //songIndex++;
//      //println(songIndex);

//    }


//    if (myFile.isDirectory()) {
//      println("listing the directory");
//      //playList = myFile;
//      // list the directory, not recursive, with the File api. returns File[].
//      println("\n\n### listFiles #############################\n");
//      println(myFile.listFiles());

//      // list the directory recursively with listFilesAsArray. returns File[]
//      println("\n\n### listFilesAsArray recursive #############################\n");
//      println(theDropEvent.listFilesAsArray(myFile, true));


//      // list the directory and control the depth of the search. returns File[]
//      println("\n\n### listFilesAsArray depth #############################\n");
//      println(theDropEvent.listFilesAsArray(myFile, 2));
//    }
//  }
//}
