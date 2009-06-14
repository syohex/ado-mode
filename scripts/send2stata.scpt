FasdUAS 1.101.10   ��   ��    k             l      ��  ��    F @ need some method for working with multiple instances of Stata.      � 	 	 �   n e e d   s o m e   m e t h o d   f o r   w o r k i n g   w i t h   m u l t i p l e   i n s t a n c e s   o f   S t a t a .     
  
 l      ��  ��    ? 9 currently bombs if there are multiple instances running      �   r   c u r r e n t l y   b o m b s   i f   t h e r e   a r e   m u l t i p l e   i n s t a n c e s   r u n n i n g        i         I     �� ��
�� .aevtoappnull  �   � ****  o      ���� 0 args  ��    k    ;       l     ��  ��      set args to {"menu"}     �   *   s e t   a r g s   t o   { " m e n u " }      l     ��  ��     - initializations     �   " -   i n i t i a l i z a t i o n s       l     �� ! "��   !  set args to {"command"}    " � # # . s e t   a r g s   t o   { " c o m m a n d " }    $ % $ l     ��������  ��  ��   %  & ' & q       ( ( �� )�� 0 numargs numArgs ) �� *�� 0 pasteme pasteMe * �� +�� 0 dothis doThis + ������ 0 	tmpdofile 	tmpDoFile��   '  , - , q       . . ������ 0 howmany howMany��   -  / 0 / q       1 1 ������ $0 defaulttmpdofile defaultTmpDoFile��   0  2 3 2 r      4 5 4 m      6 6 � 7 7  f e e d S t a t a . d o 5 o      ���� $0 defaulttmpdofile defaultTmpDoFile 3  8 9 8 l   ��������  ��  ��   9  : ; : l   �� < =��   < ' ! check proper number of arguments    = � > > B   c h e c k   p r o p e r   n u m b e r   o f   a r g u m e n t s ;  ? @ ? r    	 A B A l    C���� C n     D E D 1    ��
�� 
leng E o    ���� 0 args  ��  ��   B o      ���� 0 numargs numArgs @  F G F Q   
 U H I J H k    H K K  L M L r     N O N n     P Q P 4    �� R
�� 
cobj R m    ����  Q o    ���� 0 args   O o      ���� 0 dothis doThis M  S T S Z    ' U V���� U H     W W E     X Y X J     Z Z  [ \ [ m     ] ] � ^ ^  c o m m a n d \  _�� _ m     ` ` � a a  m e n u��   Y o    ���� 0 dothis doThis V n   # b c b I    #�������� 0 badfirstarg badFirstArg��  ��   c  f    ��  ��   T  d�� d Z   ( H e f�� g e ?   ( + h i h o   ( )���� 0 numargs numArgs i m   ) *����  f k   . B j j  k l k r   . 4 m n m n   . 2 o p o 4   / 2�� q
�� 
cobj q m   0 1����  p o   . /���� 0 args   n o      ���� 0 	tmpdofile 	tmpDoFile l  r�� r Z   5 B s t���� s =   5 8 u v u o   5 6���� 0 	tmpdofile 	tmpDoFile v m   6 7 w w � x x   t r   ; > y z y o   ; <���� $0 defaulttmpdofile defaultTmpDoFile z o      ���� 0 	tmpdofile 	tmpDoFile��  ��  ��  ��   g r   E H { | { o   E F���� $0 defaulttmpdofile defaultTmpDoFile | o      ���� 0 	tmpdofile 	tmpDoFile��   I R      ������
�� .ascrerr ****      � ****��  ��   J l  P U } ~  } n  P U � � � I   Q U�������� 0 badfirstarg badFirstArg��  ��   �  f   P Q ~   no arguments     � � �    n o   a r g u m e n t s G  � � � l  V V��������  ��  ��   �  � � � l  V V�� � ���   � U O grab clipboard, strip totally blank lines, to check if there is anything to do    � � � � �   g r a b   c l i p b o a r d ,   s t r i p   t o t a l l y   b l a n k   l i n e s ,   t o   c h e c k   i f   t h e r e   i s   a n y t h i n g   t o   d o �  � � � l  V V�� � ���   � 9 3   Aside: perhaps this should be on the emacs side?    � � � � f       A s i d e :   p e r h a p s   t h i s   s h o u l d   b e   o n   t h e   e m a c s   s i d e ? �  � � � l  V V�� � ���   � X R   for now it will stay here... could be wrong behavior, plus it is simpler to do     � � � � �       f o r   n o w   i t   w i l l   s t a y   h e r e . . .   c o u l d   b e   w r o n g   b e h a v i o r ,   p l u s   i t   i s   s i m p l e r   t o   d o   �  � � � l  V V�� � ���   �       in Applescript (!)    � � � � .           i n   A p p l e s c r i p t   ( ! ) �  � � � r   V b � � � n  V ` � � � I   W `�� ����� "0 stripblanklines stripBlankLines �  ��� � I  W \������
�� .JonsgClp****    ��� null��  ��  ��  ��   �  f   V W � o      ���� 0 pasteme pasteMe �  � � � Z   c { � ����� � =   c f � � � o   c d���� 0 pasteme pasteMe � m   d e � � � � �   � O   i w � � � I  m v�� � �
�� .sysodlogaskr        TEXT � m   m n � � � � � , N o t h i n g   t o   s e n d   S t a t a ! � �� ���
�� 
btns � J   o r � �  ��� � m   o p � � � � �  C a n c e l��  ��   � m   i j � ��                                                                                  MACS   alis    `  Malcom                     �ꫣH+   .�
Finder.app                                                      .�����        ����  	                CoreServices    ����      ���<     .�  ��  ��  -Malcom:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a l c o m  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l  | |��������  ��  ��   �  � � � l  | |�� � ���   � / ) write information to tmpDoFile if needed    � � � � R   w r i t e   i n f o r m a t i o n   t o   t m p D o F i l e   i f   n e e d e d �  � � � Z   | � ������� � =  | � � � � o   | }���� 0 dothis doThis � m   } � � � � � �  m e n u��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � S M in the best of worlds, it would be possible to loop through the instances of    � � � � �   i n   t h e   b e s t   o f   w o r l d s ,   i t   w o u l d   b e   p o s s i b l e   t o   l o o p   t h r o u g h   t h e   i n s t a n c e s   o f �  � � � l  � ��� � ���   � 5 /   Stata to send the same code to each instance    � � � � ^       S t a t a   t o   s e n d   t h e   s a m e   c o d e   t o   e a c h   i n s t a n c e �  � � � O   � � � � � r   � � � � � l  � � ����� � 6  � � � � � 2   � ���
�� 
prcs � E   � � � � � 1   � ���
�� 
pnam � m   � � � � � � � 
 S t a t a��  ��   � o      ���� 0 	thestatas 	theStatas � m   � � � ��                                                                                  sevs   alis    |  Malcom                     �ꫣH+   .�System Events.app                                               <����        ����  	                CoreServices    ����      ��e     .�  ��  ��  4Malcom:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a l c o m  -System/Library/CoreServices/System Events.app   / ��   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � l  � � ����� � I  � ��� ���
�� .corecnte****       **** � o   � ����� 0 	thestatas 	theStatas��  ��  ��   � o      ���� 0 howmany howMany �  � � � Z   �	 � ��� � � =  � � � � � o   � ����� 0 howmany howMany � m   � �����   � O   � � � � � k   � � � �  � � � I  � �������
�� .sysobeepnull��� ��� long��  ��   �  ��� � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � " N o   S t a t a   r u n n i n g ! � �� ���
�� 
btns � J   � � � �  ��� � m   � � � � � � �  C a n c e l��  ��  ��   � m   � � � ��                                                                                  MACS   alis    `  Malcom                     �ꫣH+   .�
Finder.app                                                      .�����        ����  	                CoreServices    ����      ���<     .�  ��  ��  -Malcom:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a l c o m  &System/Library/CoreServices/Finder.app  / ��  ��   � k   �	 � �  � � � Z   � � � ���� � ?   � � o   � ����� 0 howmany howMany m   � �����   k   � �  O   � � I  � ���	
�� .sysodlogaskr        TEXT m   � �

 � @ n o t h i n g   f o r   m u l t i p l e   s t a t a ' s   y e t	 ��~
� 
btns J   � � �} m   � � �  C a n c e l�}  �~   m   � ��                                                                                  MACS   alis    `  Malcom                     �ꫣH+   .�
Finder.app                                                      .�����        ����  	                CoreServices    ����      ���<     .�  ��  ��  -Malcom:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a l c o m  &System/Library/CoreServices/Finder.app  / ��    l  � ��|�|   J D a PITA, because Stata can use the same name for different processes    � �   a   P I T A ,   b e c a u s e   S t a t a   c a n   u s e   t h e   s a m e   n a m e   f o r   d i f f e r e n t   p r o c e s s e s  l  � ��{�{   Q K so... the following code doesn't work. It is here as a reminder and a stub    � �   s o . . .   t h e   f o l l o w i n g   c o d e   d o e s n ' t   w o r k .   I t   i s   h e r e   a s   a   r e m i n d e r   a n d   a   s t u b �z l   � ��y�y  /) tell application "System Events"			set theStatas to (the file of every process whose name contains "Stata")		end tell		repeat with aStata in theStatas			doByFile(theFile, doThis, tmpDoFile)			--- doByFile will need to rely on frontmost applications, which could be dangerous.		end repeat
		    �R   t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 	 	 s e t   t h e S t a t a s   t o   ( t h e   f i l e   o f   e v e r y   p r o c e s s   w h o s e   n a m e   c o n t a i n s   " S t a t a " )  	 	 e n d   t e l l  	 	 r e p e a t   w i t h   a S t a t a   i n   t h e S t a t a s  	 	 	 d o B y F i l e ( t h e F i l e ,   d o T h i s ,   t m p D o F i l e )  	 	 	 - - -   d o B y F i l e   w i l l   n e e d   t o   r e l y   o n   f r o n t m o s t   a p p l i c a t i o n s ,   w h i c h   c o u l d   b e   d a n g e r o u s .  	 	 e n d   r e p e a t 
 	 	�z  ��  ��   �  !  l  � ��x�w�v�x  �w  �v  ! "#" l  � ��u$%�u  $ : 4 know there is exactly one instance of Stata running   % �&& h   k n o w   t h e r e   i s   e x a c t l y   o n e   i n s t a n c e   o f   S t a t a   r u n n i n g# '(' l  � ��t)*�t  )   can finally get to work   * �++ 0   c a n   f i n a l l y   g e t   t o   w o r k( ,�s, O   �	-.- r   �/0/ l  �1�r�q1 l  �2�p�o2 n   �343 1   �n
�n 
pnam4 l  � 5�m�l5 n   � 676 4  � �k8
�k 
cobj8 m   � ��j�j 7 o   � ��i�i 0 	thestatas 	theStatas�m  �l  �p  �o  �r  �q  0 o      �h�h 0 thestataname theStataName. m   � �99�                                                                                  sevs   alis    |  Malcom                     �ꫣH+   .�System Events.app                                               <����        ����  	                CoreServices    ����      ��e     .�  ��  ��  4Malcom:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a l c o m  -System/Library/CoreServices/System Events.app   / ��  �s   � :;: l 

�g�f�e�g  �f  �e  ; <=< l 

�d>?�d  > : 4 without the following, things get really strange...   ? �@@ h   w i t h o u t   t h e   f o l l o w i n g ,   t h i n g s   g e t   r e a l l y   s t r a n g e . . .= ABA O  
CDC I �c�b�a
�c .miscactvnull��� ��� null�b  �a  D 4  
�`E
�` 
cappE o  �_�_ 0 thestataname theStataNameB FGF l �^�]�\�^  �]  �\  G HIH Z  9JK�[LJ = !MNM o  �Z�Z 0 dothis doThisN m   OO �PP  m e n uK n $-QRQ I  %-�YS�X�Y 0 domenu doMenuS TUT o  %(�W�W 0 thestataname theStataNameU V�VV o  ()�U�U 0 	tmpdofile 	tmpDoFile�V  �X  R  f  $%�[  L I  09�TW�S�T 0 pastetmpstata pasteTmpStataW XYX o  14�R�R 0 thestataname theStataNameY Z�QZ o  45�P�P 0 pasteme pasteMe�Q  �S  I [�O[ l ::�N�M�L�N  �M  �L  �O    \]\ l     �K�J�I�K  �J  �I  ] ^_^ i    `a` I      �H�G�F�H 0 badfirstarg badFirstArg�G  �F  a O     bcb I   �Ede
�E .sysodlogaskr        TEXTd m    ff �gg \ T h e   f i r s t   a r g u m e n t   m u s t   b e   " c o m m a n d "   o r   " m e n u "e �Dh�C
�D 
btnsh J    	ii j�Bj m    kk �ll  C a n c e l�B  �C  c m     mm�                                                                                  MACS   alis    `  Malcom                     �ꫣH+   .�
Finder.app                                                      .�����        ����  	                CoreServices    ����      ���<     .�  ��  ��  -Malcom:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a l c o m  &System/Library/CoreServices/Finder.app  / ��  _ non l     �A�@�?�A  �@  �?  o pqp i    rsr I      �>t�=�> 0 domenu doMenut uvu o      �<�< 0 	stataname 	stataNamev w�;w o      �:�: 0 	tmpdofile 	tmpDoFile�;  �=  s k     �xx yzy l     �9{|�9  { K E if multiple instances ever work, be sure this gets written just once   | �}} �   i f   m u l t i p l e   i n s t a n c e s   e v e r   w o r k ,   b e   s u r e   t h i s   g e t s   w r i t t e n   j u s t   o n c ez ~~ r     ��� I    �8��7
�8 .sysoexecTEXT���     TEXT� m     �� ��� 8 g e t c o n f   D A R W I N _ U S E R _ T E M P _ D I R�7  � o      �6�6 
0 tmpdir   ��� r    ��� l   ��5�4� b    ��� o    	�3�3 
0 tmpdir  � o   	 
�2�2 0 	tmpdofile 	tmpDoFile�5  �4  � o      �1�1 0 	tmpdofile 	tmpDoFile� ��� l   �0���0  � < 6 need applescript-style file name to write to the file   � ��� l   n e e d   a p p l e s c r i p t - s t y l e   f i l e   n a m e   t o   w r i t e   t o   t h e   f i l e� ��� r    ��� 4    �/�
�/ 
psxf� o    �.�. 0 	tmpdofile 	tmpDoFile� o      �-�- "0 stupidapplefile stupidAppleFile� ��� Q    a���� k    A�� ��� I   �,��
�, .rdwropenshor       file� o    �+�+ "0 stupidapplefile stupidAppleFile� �*��)
�* 
perm� m    �(
�( boovtrue�)  � ��� I    '�'��
�' .rdwrseofnull���     ****� o     !�&�& "0 stupidapplefile stupidAppleFile� �%��$
�% 
set2� m   " #�#�#  �$  � ��� I  ( 3�"��
�" .rdwrwritnull���     ****� l  ( -��!� � I  ( -���
� .JonsgClp****    ��� null�  �  �!  �   � ���
� 
refn� o   . /�� "0 stupidapplefile stupidAppleFile�  � ��� I  4 ;���
� .rdwrwritnull���     ****� o   4 5�
� 
ret � ���
� 
refn� o   6 7�� "0 stupidapplefile stupidAppleFile�  � ��� I  < A���
� .rdwrclosnull���     ****� o   < =�� "0 stupidapplefile stupidAppleFile�  �  � R      ���
� .ascrerr ****      � ****�  �  � k   I a�� ��� I  I N���
� .rdwrclosnull���     ****� o   I J�� "0 stupidapplefile stupidAppleFile�  � ��
� O   O a��� I  S `�	��
�	 .sysodlogaskr        TEXT� m   S T�� ��� L H a d   t r o u b l e   w i t h   t h e   t e m p o r a r y   d o - f i l e� ���
� 
btns� J   W \�� ��� m   W Z�� ���  C a n c e l�  �  � m   O P���                                                                                  MACS   alis    `  Malcom                     �ꫣH+   .�
Finder.app                                                      .�����        ����  	                CoreServices    ����      ���<     .�  ��  ��  -Malcom:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a l c o m  &System/Library/CoreServices/Finder.app  / ��  �
  � ��� l  b b����  � #  applescript really is a pita   � ��� :   a p p l e s c r i p t   r e a l l y   i s   a   p i t a� ��� O   b q��� I  k p���
� .miscactvnull��� ��� null�  �  � 4   b h��
� 
capp� o   f g� �  0 	stataname 	stataName� ��� l  r r��������  ��  ��  � ���� Q   r ����� I   u {������� 0 
dotmpstata 
doTmpStata� ���� o   v w���� 0 	stataname 	stataName��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � k   � ��� ��� I   � �������� "0 createmenuitems createMenuItems� ��� o   � ����� 0 	stataname 	stataName� ���� o   � ����� 0 	tmpdofile 	tmpDoFile��  ��  � ��� l  � �������  � 8 2 need to be sure the menu item exists on first try   � ��� d   n e e d   t o   b e   s u r e   t h e   m e n u   i t e m   e x i s t s   o n   f i r s t   t r y� ��� I  � ������
�� .sysodelanull��� ��� nmbr� m   � ����� ��  � ���� Q   � ����� I   � �������� 0 
dotmpstata 
doTmpStata� ���� o   � ����� 0 	stataname 	stataName��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � O   � ���� I  � �����
�� .sysodlogaskr        TEXT� m   � ��� ��� v S o m e t h i n g   w e n t   w r o n g . . .   i s   y o u r   s t a t a   v e r s i o n   s e t   p r o p e r l y ?� �����
�� 
btns� J   � ��� ���� m   � ��� ���  C a n c e l��  ��  � m   � ����                                                                                  MACS   alis    `  Malcom                     �ꫣH+   .�
Finder.app                                                      .�����        ����  	                CoreServices    ����      ���<     .�  ��  ��  -Malcom:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a l c o m  &System/Library/CoreServices/Finder.app  / ��  ��  ��  q ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 
dotmpstata 
doTmpStata� ���� o      ���� 0 	stataname 	stataName��  ��  � O     /� � Z    .���� 1    ��
�� 
uien O    * I   )����
�� .prcsclicuiel    ��� uiel n    % 4   " %��
�� 
menI m   # $		 �

  r u n   t m p   f i l e n    " 4    "��
�� 
menE m     !����  n     4    ��
�� 
menI m     � & A p p l e s c r i p t   h e l p e r s n     4    ��
�� 
menE m    ����  n     4    ��
�� 
mbri m     �  U s e r 4    ��
�� 
mbar m    ���� ��   4    ��
�� 
pcap o    ���� 0 	stataname 	stataName��  ��    m     �                                                                                  sevs   alis    |  Malcom                     �ꫣH+   .�System Events.app                                               <����        ����  	                CoreServices    ����      ��e     .�  ��  ��  4Malcom:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a l c o m  -System/Library/CoreServices/System Events.app   / ��  �  l     ��������  ��  ��    !  i    "#" I      ��$���� "0 createmenuitems createMenuItems$ %&% o      ���� 0 	stataname 	stataName& '��' o      ���� 0 	tmpdofile 	tmpDoFile��  ��  # O     3()( Z    2*+����* 1    ��
�� 
uien+ O    .,-, k    -.. /0/ l   ��12��  1 * $ get the command window to the front   2 �33 H   g e t   t h e   c o m m a n d   w i n d o w   t o   t h e   f r o n t0 454 I   ��67
�� .prcskprsnull���    utxt6 m    88 �99  47 ��:��
�� 
faal: m    ��
�� eMdsKcmd��  5 ;<; I   !��=��
�� .prcskprsnull���    utxt= b    >?> m    @@ �AA r w i n d o w   m e n u   a p p e n d   s u b m e n u   " s t U s e r "   " A p p l e s c r i p t   h e l p e r s "? o    ��
�� 
ret ��  < B��B I  " -��C��
�� .prcskprsnull���    utxtC b   " )DED b   " 'FGF b   " %HIH m   " #JJ �KK � w i n d o w   m e n u   a p p e n d   i t e m   " A p p l e s c r i p t   h e l p e r s "   " r u n   t m p   f i l e "   " d o  I o   # $���� 0 	tmpdofile 	tmpDoFileG m   % &LL �MM  "E o   ' (��
�� 
ret ��  ��  - 4    ��N
�� 
pcapN o    ���� 0 	stataname 	stataName��  ��  ) m     OO�                                                                                  sevs   alis    |  Malcom                     �ꫣH+   .�System Events.app                                               <����        ����  	                CoreServices    ����      ��e     .�  ��  ��  4Malcom:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a l c o m  -System/Library/CoreServices/System Events.app   / ��  ! PQP l     ��������  ��  ��  Q RSR i    TUT I      ��V���� 0 pastetmpstata pasteTmpStataV WXW o      ���� 0 	stataname 	stataNameX Y��Y o      ���� 0 pasteme pasteMe��  ��  U k     �ZZ [\[ q      ]] ������ 0 oldclipboard oldClipBoard��  \ ^_^ r     `a` I    ������
�� .JonsgClp****    ��� null��  ��  a o      ���� 0 oldclipboard oldClipBoard_ bcb Q    �defd k    `gg hih I   ��j��
�� .JonspClpnull���     ****j o    ���� 0 pasteme pasteMe��  i k��k O    `lml Z    _no����n 1    ��
�� 
uieno O    [pqp k   # Zrr sts I  # ,��uv
�� .prcskprsnull���    utxtu m   # $ww �xx  Mv ��y��
�� 
faaly b   % (z{z m   % &��
�� eMdsKcmd{ m   & '��
�� eMdsKsft��  t |}| l  - -��~��  ~  delay 1    ���  d e l a y   1} ��� I  - 4����
�� .prcskprsnull���    utxt� m   - .�� ���  4� �����
�� 
faal� m   / 0��
�� eMdsKcmd��  � ��� l  5 5������  �  delay 1   � ���  d e l a y   1� ��� I  5 J�����
�� .prcsclicuiel    ��� uiel� n  5 F��� 4   ? F���
�� 
menI� l 	 B E������ m   B E�� ��� 
 P a s t e��  ��  � n   5 ?��� 4   < ?���
�� 
menE� m   = >�� ���  E d i t� n  5 <��� 4   9 <���
�� 
mbri� l 	 : ;������ m   : ;�� ���  E d i t��  ��  � 4   5 9���
�� 
mbar� m   7 8���� ��  � ��� l  K K������  � > 8 added delay when seeing odd behavior on machine at work   � ��� p   a d d e d   d e l a y   w h e n   s e e i n g   o d d   b e h a v i o r   o n   m a c h i n e   a t   w o r k� ��� l  K K������  � U O it seems that a delay of under 0.2 seconds makes things weird on fast machines   � ��� �   i t   s e e m s   t h a t   a   d e l a y   o f   u n d e r   0 . 2   s e c o n d s   m a k e s   t h i n g s   w e i r d   o n   f a s t   m a c h i n e s� ��� I  K R�����
�� .sysodelanull��� ��� nmbr� m   K N�� ?ə�������  � ��� I  S Z�~��}
�~ .prcskprsnull���    utxt� o   S V�|
�| 
ret �}  �  q 4     �{�
�{ 
pcap� o    �z�z 0 	stataname 	stataName��  ��  m m    ���                                                                                  sevs   alis    |  Malcom                     �ꫣH+   .�System Events.app                                               <����        ����  	                CoreServices    ����      ��e     .�  ��  ��  4Malcom:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a l c o m  -System/Library/CoreServices/System Events.app   / ��  ��  e R      �y�x�w
�y .ascrerr ****      � ****�x  �w  f k   h ��� ��� I  h m�v��u
�v .JonspClpnull���     ****� o   h i�t�t 0 oldclipboard oldClipBoard�u  � ��s� O   n ���� I  t ��r��
�r .sysodlogaskr        TEXT� m   t w�� ��� V H a d   t r o u b l e   p a s t i n g   t o   S t a t a   c o m m a n d   w i n d o w� �q��p
�q 
btns� J   z �� ��o� m   z }�� ���  C a n c e l�o  �p  � m   n q���                                                                                  MACS   alis    `  Malcom                     �ꫣH+   .�
Finder.app                                                      .�����        ����  	                CoreServices    ����      ���<     .�  ��  ��  -Malcom:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a l c o m  &System/Library/CoreServices/Finder.app  / ��  �s  c ��n� I  � ��m��l
�m .JonspClpnull���     ****� o   � ��k�k 0 oldclipboard oldClipBoard�l  �n  S ��� l     �j�i�h�j  �i  �h  � ��� i    ��� I      �g��f�g "0 stripblanklines stripBlankLines� ��e� o      �d�d 0 thetext theText�e  �f  � k     i�� ��� q      �� �c��c 0 theparas theParas� �b�a�b 0 thepara thePara�a  � ��� r     ��� l    ��`�_� n     ��� 2   �^
�^ 
cpar� o     �]�] 0 thetext theText�`  �_  � o      �\�\ 0 theparas theParas� ��� r    
��� J    �[�[  � o      �Z�Z 0 thecleanstuff theCleanStuff� ��� X    ^��Y�� k    Y�� ��� r    ��� m    �X
�X boovtrue� o      �W�W 0 eraseme  � ��� X    I��V�� Z   1 D���U�T� H   1 8�� E  1 7��� J   1 5�� ��� m   1 2�� ���   � ��S� m   2 3�� ���  	�S  � o   5 6�R�R 0 achar aChar� k   ; @�� ��� r   ; >��� m   ; <�Q
�Q boovfals� o      �P�P 0 eraseme  � ��O�  S   ? @�O  �U  �T  �V 0 achar aChar� n   " %� � 2   # %�N
�N 
cha   o   " #�M�M 0 thepara thePara� �L Z   J Y�K�J H   J L o   J K�I�I 0 eraseme   r   O U l  O R�H�G c   O R	 o   O P�F�F 0 thepara thePara	 m   P Q�E
�E 
TEXT�H  �G   l     
�D�C
 n        ;   S T o   R S�B�B 0 thecleanstuff theCleanStuff�D  �C  �K  �J  �L  �Y 0 thepara thePara� o    �A�A 0 theparas theParas�  r   _ d o   _ `�@
�@ 
ret  l     �?�> 1   ` c�=
�= 
txdl�?  �>   �< L   e i l  e h�;�: c   e h o   e f�9�9 0 thecleanstuff theCleanStuff m   f g�8
�8 
TEXT�;  �:  �<  �  l     �7�6�5�7  �6  �5   �4 l     �3�2�1�3  �2  �1  �4       �0 !"#�/�.�-�,�+�0   �*�)�(�'�&�%�$�#�"�!� ���
�* .aevtoappnull  �   � ****�) 0 badfirstarg badFirstArg�( 0 domenu doMenu�' 0 
dotmpstata 
doTmpStata�& "0 createmenuitems createMenuItems�% 0 pastetmpstata pasteTmpStata�$ "0 stripblanklines stripBlankLines�# 0 	thestatas 	theStatas�" 0 thestataname theStataName�!  �   �  �  �   � ��$%�
� .aevtoappnull  �   � ****� 0 args  �  $ �������� 0 args  � 0 numargs numArgs� 0 pasteme pasteMe� 0 dothis doThis� 0 	tmpdofile 	tmpDoFile� 0 howmany howMany� $0 defaulttmpdofile defaultTmpDoFile% $ 6�� ] `� w���� � � ��
 ��	 � ��&� ���� � �
���O� ��
� 
leng
� 
cobj� 0 badfirstarg badFirstArg�  �  
� .JonsgClp****    ��� null� "0 stripblanklines stripBlankLines
�
 
btns
�	 .sysodlogaskr        TEXT
� 
prcs&  
� 
pnam� 0 	thestatas 	theStatas
� .corecnte****       ****
� .sysobeepnull��� ��� long� 0 thestataname theStataName
� 
capp
� .miscactvnull��� ��� null�  0 domenu doMenu�� 0 pastetmpstata pasteTmpStata�<�E�O��,E�O @��k/E�O��lv� 
)j+ Y hO�k ��l/E�O��  �E�Y hY �E�W X  )j+ O)*j 	k+ 
E�O��  � ���kvl UY hO�a   hY hOa  *a -a [a ,\Za @1E` UO_ j E�O�j  � *j Oa �a kvl UY 6�k � a �a kvl UOPY hOa  _ �k/a ,E` UO*a _ / *j  UO�a !  )_ �l+ "Y *_ �l+ #OP ��a����'(���� 0 badfirstarg badFirstArg��  ��  '  ( mf��k��
�� 
btns
�� .sysodlogaskr        TEXT�� � ���kvl U ��s����)*���� 0 domenu doMenu�� ��+�� +  ������ 0 	stataname 	stataName�� 0 	tmpdofile 	tmpDoFile��  ) ���������� 0 	stataname 	stataName�� 0 	tmpdofile 	tmpDoFile�� 
0 tmpdir  �� "0 stupidapplefile stupidAppleFile* ����������������������������������������������
�� .sysoexecTEXT���     TEXT
�� 
psxf
�� 
perm
�� .rdwropenshor       file
�� 
set2
�� .rdwrseofnull���     ****
�� .JonsgClp****    ��� null
�� 
refn
�� .rdwrwritnull���     ****
�� 
ret 
�� .rdwrclosnull���     ****��  ��  
�� 
btns
�� .sysodlogaskr        TEXT
�� 
capp
�� .miscactvnull��� ��� null�� 0 
dotmpstata 
doTmpStata�� "0 createmenuitems createMenuItems
�� .sysodelanull��� ��� nmbr�� ��j E�O��%E�O*�/E�O .��el O��jl O*j �l 	O��l 	O�j W X  �j O� �a a kvl UO*a �/ *j UO *�k+ W :X  *��l+ Okj O *�k+ W X  � a a a kvl U �������,-���� 0 
dotmpstata 
doTmpStata�� ��.�� .  ���� 0 	stataname 	stataName��  , ���� 0 	stataname 	stataName- ������������	��
�� 
uien
�� 
pcap
�� 
mbar
�� 
mbri
�� 
menE
�� 
menI
�� .prcsclicuiel    ��� uiel�� 0� ,*�,E $*�/ *�k/��/�k/��/�k/��/j 
UY hU ��#����/0���� "0 createmenuitems createMenuItems�� ��1�� 1  ������ 0 	stataname 	stataName�� 0 	tmpdofile 	tmpDoFile��  / ������ 0 	stataname 	stataName�� 0 	tmpdofile 	tmpDoFile0 O����8������@��JL
�� 
uien
�� 
pcap
�� 
faal
�� eMdsKcmd
�� .prcskprsnull���    utxt
�� 
ret �� 4� 0*�,E (*�/ ���l O��%j O�%�%�%j UY hU  ��U����23���� 0 pastetmpstata pasteTmpStata�� ��4�� 4  ������ 0 	stataname 	stataName�� 0 pasteme pasteMe��  2 �������� 0 	stataname 	stataName�� 0 pasteme pasteMe�� 0 oldclipboard oldClipBoard3 ���������w��������������������������������������
�� .JonsgClp****    ��� null
�� .JonspClpnull���     ****
�� 
uien
�� 
pcap
�� 
faal
�� eMdsKcmd
�� eMdsKsft
�� .prcskprsnull���    utxt
�� 
mbar
�� 
mbri
�� 
menE
�� 
menI
�� .prcsclicuiel    ��� uiel
�� .sysodelanull��� ��� nmbr
�� 
ret ��  ��  
�� 
btns
�� .sysodlogaskr        TEXT�� �*j  E�O Z�j O� L*�,E D*�/ 9����%l 	O���l 	O*�k/��/��/a a /j Oa j O_ j 	UY hUW #X  �j Oa  a a a kvl UO�j ! �������56���� "0 stripblanklines stripBlankLines�� ��7�� 7  ���� 0 thetext theText��  5 �������������� 0 thetext theText�� 0 theparas theParas�� 0 thepara thePara�� 0 thecleanstuff theCleanStuff�� 0 eraseme  �� 0 achar aChar6 
������������������
�� 
cpar
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
cha 
�� 
TEXT
�� 
ret 
�� 
txdl�� j��-E�OjvE�O R�[��l kh eE�O )��-[��l kh ��lv� 
fE�OY h[OY��O� ��&�6FY h[OY��O�*�,FO��&" ��8�� 8  99 ::  ���;
�� 
pcap; �<<  S t a t a S E# �==  S t a t a S E�/  �.  �-  �,  �+   ascr  ��ޭ