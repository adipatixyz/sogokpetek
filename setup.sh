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
BZh91AY&SY"�-� 
����0�����������d@w��� � P @ `)]�ɣ������=����{�/���V���MU�=�7���j���y�㒕T�!}٦�R�-��S�7�ud.Ku��;Z����m��Y�7f����:�����( �"h#S@h)�)邧蚟�OiO�S�Q��i�mG���4�A	��L�S��Q��516��P4ɐ�1P  	 A�?SmF��S�L��z�F���� �   MD��M4)�iO�L��SO)�	����5M26���B@��0CO@�BFM�5='��i�6�4444M    �! &��ahM��O�M6)��Mjh4�� p�d�`M�DG�5���>a��Ö������� �"��R�}�<L��൓I������ ̊�1������.oи'�R���A?0���"b
�X��:�d�۔��@,8���n��L q�z�[�P	D�X�Oy�����UҶ�T���<͸�՞Z�\�n&�TA��Z�=�0�~�`E��nYѹ-+�n2��F��ߖ�s�iz� �s[n���2��vD��rP��元o]��ގz�Mʮ&��a:�>�oz��[x4�KKRᕰ؉���M���yU��}]T�#�r?"��go>�l{0�٠�O�%Eє�1|l�#!Œ���:�q�~P,nPٖG���XBÄ�cH֢];
NB:&�t�,+2*�P
��<Ȁu�~g�:^ֽM�4ЬX|5�����Y�Ӭ�6�r�ۨ-�~ B�*k��9)Ə�!g�+o޻;(�ū,(Ɠ<�+7)v͜;Nͺ�ǃ&�Sc+fN�ɚ��Lo�'Vq�n�h�i|���UW	�,9WL�i��jk1��FҨ��i��0b��i	��ό�Ij��Fu�I�
!"�Q
@����N:T�f���d:���meH�=UaOr�J1�P%��,�lUvk+�[<��Dl׵��t��bX���Eu�v�o��j��������F. ���J�\�v�j�Z��ՑW�
���h��!����[�y���5�d�Y)�����	D��{vW6�I�V��S��c��@9E z�� ���}�Ejm�7vw�x-A�+Ir����
��j]�5��yb�;������� w�^�\���S=r�n��X�b#f�MW������2h�cI�u[��q�gݶ��$���"�	 b�U;����j$:Q�z�����ܖ��	�>�y�l6E��(&��ooP�ǙF����4]��6�T���~pb����DGb�����aޝ���Z�љ��z" �J��d�B� P�fN�e�R��H�j�f��j=ʏT���\;����R6�i���谾[�u��4j��җ�7υ�|���.���|�r�ʜn�b ◷>�s.��-�pj	3�� 39E^��b�9���Di˳�琴o�J�8�-�?|L6:Yi���b����q���\
q!4�}?J!�}~3Me��}�yz���\���N�td�ŋ��Q�,n_^�qi�$L$T�9�<��r�g}m�s`����N:��g���~Go��םǛ����
-ֹ�B*NE*�X����\�>G�����BY��/�G=�{��o�c��l�b�=GM��o��W���'���aUE�h��Y�4��'�NrC��A�I�rP��ñY�rMD[e�L4B.�I\�c*ǋL#����EW�BbyG:h|�%n���9����_~"6�f.ѽ��ea�@�.J.�$������G*02-5YG�{M�1ǵ¯K����-{F�h�Dl�m�Ѭ*սKD�g���:l~>]�W�'�㕞~��$a��#�ޤ�Q�X-�5㰁ts��6 ݾ�jA�d����wRx�0�v��9�Pk����;JK6���"1�AX@q[{��l�;����ꪐ~�#�\eY?'��-��{��:ym�A�z�٠Z� �̰���ve۳�����ƋUR�[)��ɿNaL�
|���zLZ���:�Z�� �ci
�My���t�u�K@���E�z$��a�m�N3l��1`�+�#�&r���sa��Եa:��qp>��ϣ$�����]xz�BY��`�GUU�l[+p�&��y�+G>x�3ml��%6�U�L�ER	��ۍ�FEQP#Q:�"C���Ϫf]]��Xa���(��=;����0���qKBZEH8�al�)�}�A�L<��_���J����u�9S��7Na��UJy`�#2V"���R̯U�C	�w@��ll�66ܝjP�>RD��(�Y�a��]�;��A`!���7��+�﴿�,��y	�����NRw�����#�&]��q\ � �4�]
���Ē�i�&cd��=u�.=���o���M�����Q�^"��A� �(�KM���i��J%�p����VR~�+cn�d�)��xP��ZQQ��)8F����[�� ��Y�����.�: ���垂�XH\U?���C��H��YZ�B>4�<�EJ�_p�������]/�z��=���Dfl!��R�g	N+�B���àp\WVI�A%p��(�@b�^
լǶ #C�,�L��$`��C!I��簨ڧ����p��	�ut����;�>+>�0���5Ë]Ji�K_.�:K�S�*e<*hcn�Zf���4C�;�k�;���jW9�h��w!V��@	H�+���=�k��^OH�+<�*�����Ζ"�ֶ����8-E��nc���eʵZ{L^Exw��]����ڈ��lp�[\2yf��V&�W!�P<X�x�8����$/����k-Ě�r���?��x	����a��難���F��Q|�ՀJ;q&���oI�,�mfի��h1��$�a �p�,��E��6�������(q�!�W�!u(�u0y-G�9$���u�l��n^���(�D.:�ʝm�܄�";=F��~�I+��hQU���.1m�Z'�F��IdZFf	D���T ���o�M�p�ɺ(A���&���A`{��)�$4��;f�]���Ң�]���إ"=�n�I�-�$�X�`�*R%���X2D���d���b�T�12��Ο�:=Ƕ]�g� �y��Ok��I�mDrc�H.$���ͣF#ȑ�	
xAD��f销�'8"�� ���Ŋ�b��"7^%q&�~\;�o�y��-@�w�].&m���	t*)�;Q��������]<���S쉛(r�fԂ6_Y	,|6���ǧcH�64~�WU@2\i�����+-�B0�s�k��XC��u�ohX�M�^O�ڀˉ�������(j7�F�����o\P5�vI���ɺ{x���<����f�(J	up'eGG���ю��ykbX!��!�C���u�Z}8��N'7���^(�w��������Cm�Kk�ٟ�y�Z��m�P��X���V�(��e���>��4�=M=RǧvSX��>��aG9*ݎ5�8�	�=
"��I��C��� ć�;��Zw�"�{�
�{A<'ט>4BY�K�n�ʾ��S���:5�2�R��Y�)X�$�q!�T�fT�N`���_�����z�|�Yz���?ӊH�g$��J,�����f�C�����C��q���_�j��i�<�3��F�R5��^;�H�{���<���5ke
-�۬B��bbG�J���"�(�8pEd��`��E�i(�Sa�?P�����G��f!�ď3��}g6��m��F�
�\	��8HXŔ�*j��f�Y�o;�c=����.����'9y�V�+���ez	�^��l^IЬ�2����;��}:�7���Ҭ��a�L�RA	�SV�<��dk��g�i�4(��P�<sq�*�3td޼`��+=hA%�ڱp�a�ܮ;ý�q0�BK^kIN2�b �\!�l5��+��B�u�9�S�@����R+Ȱ�Gf��mU�Jg�m$�L`�%a��TX���Խ�X��y;�X��<�����3�̭n����#��Y.|P���eT!���]щf�[F�$�;
eՍ�Y�w���2��B��X���eK��o��LG��.���q]UbF -�ueˑ�����XS>��s�{
Y �Rx"� ��k"8/z�,�"��9��i�yf8*��⎿���EA�I-S&���"g�j	��z��JY
@����&���#$*"A�������^�?��� ɇ�)p�>�y�d4~�T����{�}�#d*�a��g���:���_���7�׽a|�#G�T�s�a!�nW˝_Yʢ�`���jk�NA�˓	!�f��[PL�k<~2�������p{��`�2�C��Asm�������>݇XNG�;�hb�5��D¥ԗ3�f��tI��Th�x�Hw���?ؠ;Hr���(`	� <R���'�`C��w���!UW��o�S`/CK��:����AIN(��v/I�u
P�����~5�2u�}�	�x���y���T��YHx:��!�1�O�y��DP�_i4$u7�hӪ�C-aЀ��%�S�x�[e��H�	���c%�VY����V�""i�J��1K�LA@b%2�F �p�pb�u	���G���>�=���e7ӳ >p�},�������gq2��'�
}r��fF�!DA4�b����BԒ
HE����TP��j�R���Oo<:d�:��:/�A�gRA`�bƀV�~A��b��Σ�LM�h���Z�x|�nIp+@̭Ƒ��i�q�]{4�H�CK,���c��6���C��B�K�#|���d�g��&�<�z`�1�A�/�A�yA��%�I�R�\�����a�)'<t%�W|�	
�\Z	�LH�ڄ4'L��^���J�����nm��"��i�y42Qb h(���WDEc<"5�	GOd�}�0���1��[����	m6鴈����^a"�����X�ܒ�$"޽[���m�;����$b`�����<ei�Q�aX*�-&dSa�!3�w���ǾdO�Aބ���α�73:�=�O�V�WR�,*N⢫��j^�p�T��E�`0*ˮ8G�퍰�t3�n�V�!k����vQlR���vf}ʦ	��a܌�6��t�_�5i�C+>��,;� �Q(��V��#�o��nj�Fa��1�����Lu�!��~D�K̵*c3x=
�6��1�	 ߠ�8� ��C��Fӯ��F"�t\"��@�-�w�``z��)��{f�:F$t��t R�>��\R��Ē�������-JM��VN��xV�3OS��Tŭ�f�\��*��5K�� &�m�e�z��̙�Y�a3�X�d%�Wh�Xҭ#$��R	&wz���8�׶�����w2�fƆ�A��D���D�=�VL]���ڏ#>BK���8��I�,A`"�!^��#�S���2���0�d1���;a��	�d.�h*T^��+!��ୄ�Rrz�m
2H%�|�%�=Ā�.!�h9V��x-�o�x\�o�(Q��j7�|uS#��Iڪ��h�����ht���qQ��Q��U�s�jF��6�ҨH��FH�tB��ɉl�����A,�_�MbvL�$Ɨ�?�,ôa)h���Ki�i���p8�F�}8�í7�Gt;Rm0�����5��C~��(:�!:�P�,of�c�{��HmP2���Nz�^d��C�����2���5��`�Tmԁ���@�P6PYvZ�[]�TB��)�0����ʅ�J���ߊ$���!,��yDn��Y竅��͐6��x-�~��-�q��� �s�"�ر椐���X@r��=�Őa8��[|Ϻ�������� d1Ŕu�HS�H��`A-w*!��fC�C� ���!`i�ca��o��	��]�0� ��Z@���n5�����x	��W��F�!�$����Ϊ����us�!���*��ą͘`��0;Qױ�m����������%ݹk$Ƭ�f$&��M*U�a�Cm/������o���@n���PpI@�bG�����$����K\s�nj=NTp�Ch��iK'o(���\�D��Pb`̭��h��*(s]���09�A:X
z��VD�eP�ЉeQ"�S:1��", ��:$CMࡐ��m%�ϛ�pd�
���0�Ws*֐H͸c�]�	�m�lu	9�"��(�i��g�̐#^&��K����`�Ȧ.�B������/�q�$t�X\��M�d("
�T6�����d��	#s���.����qG��Auh.?bPf������T>,�0��w��!y�|��Z~Şյ&�0���/�6ʒ�`5ɺ`��\x�a�h��@Ճ������u�{f ]�v��&�� c�?WU�>l�I~���׾� ����mڛY�D*)^ ���?1���$�36X��3uf��^嗜���:�E�8�L	�b���['�r�)��׫S� � �C&0�l;�H2� h�T�j@Թɜ{(�J�����a��`,�K�RU)�1��R�

�	��<j�!qm%��Z�:s@�t��gO�|T�\��p�Q,@�rZ6ЖCi��6I]�D�u]$¦+d��d��Ɩct27�!h��n���B*���V�}��F�` � c_!?������8\ ��	��$rV�;FP�&QD8�t5����.	��`ٺ��IA4H��04�q��A�h��f��]��a���y��f��ꤞ�N@��F"���A�H��/#�qR1�㩖m-$#^�*F�q�LFcKq4��7Y��+��ҒL!,d����1�T�ە��"A �
�kd�%�&a9�fġXH\��:�
Q+�Ցf%����Șc�XXj��`25�Z}�P&��Z��
<C�:;����-��@�Ы�B�������!��yn�k �.Bj�h#$���v��Y�q���� ��&hf��9E)Kib0�t! 
�d� ���(�B ��Z��u���`��ܹ���f�ã27ޛ��� ˂&zEx���[%�+�]77�h��B�VӪ������{[��Ga��OI��p��a�Ùb�(-�ܹ%��w!�1�Z*݅n�q�D��;q)4�!����`��ɠ��H.��L��t��kT� � 1V��Z2�Hc&�!�T.#k��:���� ����$G)��h���"[*���"��,T4�>��i�I�{B�cAZ�r$��Õ �1��=�l��:|xx���[����\���ċ�+������j�1����4D�9���`	Zh��Ѩ!�����A�ftn�EPP�#Z���&>�L���1����A'L㽛��]Lp*Bta6�{a��j[bc�N@�(DACD��Fa:�]����<ǭ�[��3��3TFq	�O�0�(�Adl����._˵;p�-!A��z���)ڥ��J��d��
��q��cd0�A�A51@��v��(B1�YQ2�a��Yvи�"�s��m�V������0��1ꪌ0Z�
�����cHz�gx��@e&���j̨Š��6�m�t�֑���ѥ�ؐ�r��j,c��*ʩs���(�FLTg00��"U�%�܀M���F�'~7a����2]���t�!�³UP� JP�wj�wR�v�M�܆H���D����dUqa��$,�t����~�L�"�y"��,���Mt����i584ɦͼ5!�d,D�"����$j*�v�|�̚(��l��s g�����G��ʺBC�I���BA6b4� ZU��d�i�EoZd��)���/rS��a����Y8X�K2f��<�j�CAI��l�v�u�(�R���l���w,�4��љ���w4�}Q,#$\�3�P�,�� Ig`�L6��M;�;�ig�`�rT��d�\�$\q�3���:�'Ixd	=��=�b�H�F6��,�A��S91�x�q���d1׬$
a3�*;��K�!������h�Q���c��u��XW�3���Y�v<�D��ILT֐8Ƌ$*�!�XSw��'B7�c�1��Kl����ۚ-��zg�J��ޅ�46�$35\!]��0���#��V���{��"���V4FN\d%��]
�Nl����7LJ��Q�9��0cp�������FG���`f�o[P�Ý��`���&�[��ԩ��g
�ƙ��nV�l ���J5����)��I�#|Ω�Ѽ�P�܍�ǝ�h�X��	�ӽ[zm�k�M������*�c5��u*�S(f��� >�[���4B���=5U��ê$bn���a��q֋��`�`x��u�������=誨ۊ���xZ��!4M,Pz4��
����$Ƿ�d�l�G!�:�~�����X&0ǩ²�P��}�P��)�f���x�r����ڴ6u�S��A�ʖ}8R�Q�VNV0�x��A�H�N��ܢ ���*0'�4'D�Vǟ	 ޗP��?�8q�W!�C"�j1<ׇϟI�u���d712�]���B����D���"<�a?8�U���~-�ݡ�Q�V�]���UV3��z�?�$��/T�+bϥ��J���nJZkT���?�T��`� �($QdY@FAF)�@��H
0��H�C� �py'�*�� 	������Gȏ:��0�S"��QP�BJRYp �s����S(�,� Œ�n�W)]5��0U)K.��E01���$�~A�V��X������-*#ls�HP�5B�Y��4�TV�J.�[&IHkT0!bJc�)��A2@���t��QUsS(X��h�(�Od�b�H�
Xe��