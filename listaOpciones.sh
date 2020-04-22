######
SCRIPTNAME="logTruncate"
echo -e "z vale $Z"
  echo -e "\\n********** $SCRIPTNAME **********"
  echo -e "** Start: $(date +%d/%m/%Y\(%H:%M:%S\)) **\\n"

APP_LOGPATHS=($(< "/home/raul/config.cfg" grep APP_LOGPATH | awk -F"=" '{print $2}'))

select value in "${APP_LOGPATHS[@]}" "Quit"; do
  case "$value" in
    "Quit" )
      echo -e "Opción QUIT seleccionada" && exit 1
      ;;
    (*[0-9]*)
      APP_LOGPATH=$(echo -e $value)   
      echo -e " El FS elegido es $APP_LOGPATH" && exit 0
      ;;
  esac
done
