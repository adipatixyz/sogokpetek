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
BZh91AY&SY�)��  �_�\P}���~�ގ����` D  � P @j����	�Ƨ��44�M ѡ��i��4`� i&L��L���j4 4�    �h4�i�C��M�b A$�LF�ҟ��&�j54z�z�=@i� ޤI@�����A�,��FT5Jkm���HXҝ��c�n�a,s7C4r`@�hAc��$�����D�)v�Ș!(%�\���E�T�ZZZo��,wJ�@^�ੁb�D�1�Q`Wd��iǫJ��Wa3C�H�g�CU��t����!D��e®;}������Zk\��o� �Eu���gE8H��r�l%d����U)r��JwO9 /B��H6��^�`�U� l���w���� 0�!=�c}2Oh[���mcc<�5�I���%NY�9�q�z�#59:�$7=��� �+���g���רsL�������ik��d�dO�(V�?k�����0D>�l�x���q�2Z��vs�0`�,C�1�,2��V�p��0H�|"�>��������QXɐ{)0;`����#ʋ��S��h�7W�3"�1��=)��7
d�(!-���s�����l�2����}yf�g��2���c)lq��>S:�2ax���лEC�&W�k�x�1��xZ�I�`�֟1�[a���U��k�"WF����'N�]������H6-��f�h�(8�*.�F��	�9�"��|��u�bb�5����.9� p���{9)X��Jb8�@)�!t�J�c���PXI��)>_&�օ��j͑�1�����ÉS)�e5� K�u	]!�I��C�!%�t���rE8P��)��