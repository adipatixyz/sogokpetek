#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY��i  	��T|��w���?���  D  � P @�t%@E3ɩ�ȓ�Sڠ6��S����m<� ����M�hi�h    �L�i�����a�0  ��4�2@  h  ڎ�vm=N���Y�9���ƭ��NpHKV]�6o�=���vG�|K���?Z����?���`����y~�������=C,�s�8�ھ�,�#T�VǞ�ˏ68�NC���+ ��H���m�NChH ��C텶�W��'�h��������懱Mb�V��oLj������jѕ�=ɺ"]R5In�O�*r�RN�	�'K�2&BMA*���Tg���<R��Y��-�\OaBnU��R�T�)��Q���ٌ�{FQ�8W��i%Q�`�E��L����9�Q�T�D�Q;)���7,!#Ly���b&�3��A�>h���x�MBK��V^Al�Ӟh�J�\�V��Z)M�$-�+%GJ�!V	s�#�/6�ʣ�Y^M#ƙ����#�X4�o�4ja�4]IU�%=�^�-qy���'�@ �����:"4�rE8P���i