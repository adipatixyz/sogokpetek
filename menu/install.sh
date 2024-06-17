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
BZh91AY&SYx.ք  	��T|��w���?���  D  � P @�T�#B)�)�<HySi44��6�mM�=6� ���Sz�ښ h#@ @a��L�i�����a�0 !�L�i�����a�0 #C��u�ہ|U/Q�2�̍k�S�
qzK��v�!����{���|>�?Z���H�O�U��)�_��i0��u�ٻ�X�|���Q��髥�vjq�q�ܶ��N��|ˇ��̮���׉\P��Þ�_/�edn���%j�|�f��`{P�!�4y�6��"���4�Aw�У.�Eޯ�n+��K����U�1!'\����	5�d��"#_�k4��
�]<~�'p���+ �'��OU�^��b勌nr�`�tM$�.M7� u��u�\����'�,���,�9\Zg�h1�meNe��O�uFΊLp��J�$���O�-�>���mD�Xɍ�Z\���mI��-���ne��C�d����ˊ)�R%e��T�l�i\\B��:�4�$��n$��4]���l,[��+�2#F��8�B���x�<�B�4���G�a����]��BA�Z