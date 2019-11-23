function is_root()
{
  if ! [ $UID -eq 0 ];
  then
    echo "ERROR: To run the script you should be a root"
    exit 1
  fi
}
