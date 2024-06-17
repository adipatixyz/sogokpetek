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
BZh91AY&SYI�D  	_�T|��w��
?���  D  � P @����=5O)�4�4��0��M&�Tzb��� �`�2��� �`�2��J$�M=&����b  h  Ev�V]v�G�FV�������M��I�J��f�m�>U�����a���D�W�%ף�m��s5�k�j>K'�������u�p��Z�8�
�Ӵ�~x�'���!��n����rȝffbl�t3��ؤ��\��0ר����,f�IMt-�B?Bi�&M�0��`��-	��X�O)g	]�"-J3�7�Zg�,�3�H�ݐ��@��6R]�r���rd����D�fa�d�<�R�� �D�ER{�>3 ��]."�An+�e�&a��<F�!�qk���PT�Gb%��0��D�䌍"��,Le4����%R��8)rL�x�V�4j7�I;�0y<aQ�&e�p�^�����-�C��İ3o0��H����K��	�h�hS�Da���)�M�  