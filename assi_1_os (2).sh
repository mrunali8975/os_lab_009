k="y"
echo "do you want to create new directory (y/n)"
read m

if [ $m == $k ]
then

 echo "create directory "
 read dname
 mkdir $dname
 cd $dname

 i="y"

 while [ $i = "y" ]

 do
  echo "1.create file"
  echo "2.search file "
  echo "3.delete file"
  echo "4.reaname file"
  echo "5.view directory"
  echo "6.to copy containt of one file to another"
  echo "7.to write in file"
  echo "8.check in which directory are you now"
  echo "9.to back in root directory"
  echo "10. view content of file "
  echo "11.exit"
  echo "enter the choice"
  read choice

  case $choice in
  1)
  echo "enter file name "
  read fname

  if [ -f $fname ]
  then
  echo "file is already exist "
  else
  touch $fname
  echo "file is created successfully "
  fi;;

  2)
  echo "enter file name "
  read sname
  if [ -f $sname ]
  then
  echo " file is present "
  else
   echo " file is not found "
  fi;;
  3)
  echo "file to be deleted "
  read dname
  if [ -f $dname ]
  then
  rm $dname
  echo " file is deleted "
  else
   echo "file is not exist"
   fi;;
  4)
    echo "enter file name to be rename"
    read rname
    echo "enter new file name "
    read  nname
    mv $rname $nname;;
  5)
    echo "files in directory ' $dname' "
    ls;;

  6)
  echo "enter old file name"
  read oname
  echo "enter new file name"
  read nname
  cp $oname $nname
  echo "file is copied "
  vi $nname;;
  7)
   echo "enter the file name that you want to write something"
   echo "after writing press esc :wq enter"
   if [ -f $dfilname ]
   then
    vi $dfilname
    cat $dfilname
   else
    echo "no such file is existed create new file"
    fi;;
 8)
   pwd;;

 9)

 echo "directory change to root"
 cd ..;;

 10)
     echo "enter file name which data do you want to display"
     read gfile
     if [ -f $gfile ]
     then
         cat $gfile
     else
      echo "file is not exist "
      fi;;
 11)
   echo "exit successfully"
    i="n";;
    esac
done

else

echo "In  already existed directory "

 i="y"

while [ $i = "y" ]

do
  echo "1.create file"
  echo "2.search file "
  echo "3.delete file"
  echo "4.reaname file"
  echo "5.view directory"
  echo "6.to copy containt of one file to another"
  echo "7.to write in file"
  echo "8.check in which directory are you now"
  echo "9.to back in root directory"
  echo "10. view content of file "
  echo "11.exit"
  echo "enter the choice"
  read choice

  case $choice in
  1)
  echo "enter file name "
  read fname

  if [ -f $fname ]
  then
  echo "file is already exist "
  else
  touch $fname
  echo "file is created successfully "
  fi;;

  2)
  echo "enter file name "
  read sname
  if [ -f $sname ]
  then
  echo " file is present "
  else
   echo " file is not found "
  fi;;
  3)
  echo "file to be deleted "
  read dname
  if [ -f $dname ]
  then
  rm $dname
  echo " file is deleted "
  else
   echo "file is not exist"
   fi;;
  4)
    echo "enter file name to be rename"
    read rname
    echo "enter new file name "
    read  nname
    mv $rname $nname;;
  5)
    echo "files in directory  'mitaoe' "
    ls;;
  6)
  echo "enter first file name"
  read oname
  echo "enter second file name"
  read nname
  cp $oname $nname;
  echo "file is copied "
  cat $nname;;
7)
   echo "enter the file name that you want to write something"
   echo "after writing press 'esc :wq enter' "
   read dfilname
   if [ -f $dfilname ]
   then
    vi $dfilname
    cat $dfilname
   else
    echo "no such file is existed create new file"
    fi;;
 8)
    pwd;;

 9)

    echo "directory change to root"
    cd ..;;
 10) echo "enter file name which data do you want to display"
     read gfile
     if [ -f $gfile ]
      then
         cat $gfile
     else
      echo "file is not exist "
      fi;;
 11)
    echo "exit successfully"
    i="n";;
 *)
   echo " invalid input"
   ;;

esac
done
fi