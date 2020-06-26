######
APP_LOGPATHS=($(< "/home/raul/config.cfg" grep APP_LOGPATH | awk -F"=" '{print $2}'))
select value in "${APP_LOGPATHS[@]}" "Quit"; do
  case "$value" in
    "Quit" )
      echo -e "Opción QUIT seleccionada" && exit 1
      ;;
      *)
      APP_LOGPATH=$(echo -e $value)   
      echo -e " El FS elegido es $APP_LOGPATH" && exit 0
      ;;
  esac
done
