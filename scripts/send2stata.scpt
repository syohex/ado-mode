FasdUAS 1.101.10   ��   ��    k             l      ��  ��    $  version 2.1.1 - Jun 17, 2011      � 	 	 <   v e r s i o n   2 . 1 . 1   -   J u n   1 7 ,   2 0 1 1     
  
 l      ��  ��    , & sends contents of clipboard to Stata      �   L   s e n d s   c o n t e n t s   o f   c l i p b o a r d   t o   S t a t a        l      ��  ��    U O allows running from command window, as a temporary do-file or via a menu item      �   �   a l l o w s   r u n n i n g   f r o m   c o m m a n d   w i n d o w ,   a s   a   t e m p o r a r y   d o - f i l e   o r   v i a   a   m e n u   i t e m        l      ��  ��    N H applescript bug: single bar in front of "include" causes compile error      �   �   a p p l e s c r i p t   b u g :   s i n g l e   b a r   i n   f r o n t   o f   " i n c l u d e "   c a u s e s   c o m p i l e   e r r o r        l      ��  ��    W Q args are: { "command" | "menu" | "dofile" || "include" } [ name-of-tmp-dofile ]      �   �   a r g s   a r e :   {   " c o m m a n d "   |   " m e n u "   |   " d o f i l e "   | |   " i n c l u d e "   }   [   n a m e - o f - t m p - d o f i l e   ]        i        !   I     �� "��
�� .aevtoappnull  �   � **** " o      ���� 0 args  ��   ! k    y # #  $ % $ l     �� & '��   &  - initializations    ' � ( ( " -   i n i t i a l i z a t i o n s %  ) * ) q       + + �� ,�� 0 numargs numArgs , �� -�� 0 pasteme pasteMe - �� .�� 0 dothis doThis . ������ 0 	tmpdofile 	tmpDoFile��   *  / 0 / q       1 1 ������ 0 howmanystatas howManyStatas��   0  2 3 2 q       4 4 ������ $0 defaulttmpdofile defaultTmpDoFile��   3  5 6 5 r      7 8 7 m      9 9 � : :  f e e d S t a t a . d o 8 o      ���� $0 defaulttmpdofile defaultTmpDoFile 6  ; < ; q     = = ������ 0 uiok UIOK��   <  > ? > l   �� @ A��   @ . ( first check that UI scripting will work    A � B B P   f i r s t   c h e c k   t h a t   U I   s c r i p t i n g   w i l l   w o r k ?  C D C O     E F E Z     G H�� I G 1    ��
�� 
uien H r     J K J m    ��
�� boovtrue K o      ���� 0 uiok UIOK��   I r     L M L m    ��
�� boovfals M o      ���� 0 uiok UIOK F m     N N�                                                                                  sevs  alis    �  	Tucholsky                  �:��H+   OhSystem Events.app                                               P��7��        ����  	                CoreServices    �:�      �8'7     Oh Og� Og�  7Tucholsky:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��   D  O�� O l  y P Q R P Z   y S T�� U S H     V V o    ���� 0 uiok UIOK T O    < W X W k   # ; Y Y  Z [ Z I  # ,�� \ ]
�� .sysodlogaskr        TEXT \ m   # $ ^ ^ � _ _ � W h e n   S y s t e m   P r e f r e n c e s   o p e n s ,   b e   s u r e   t h a t   ' E n a b l e   a c c e s s   f o r   a s s i s t i v e   d e v i c e s '   i s   c h e c k e d ,   t h e n   t r y   a g a i n . ] �� `��
�� 
btns ` J   % ( a a  b�� b m   % & c c � d d  O K��  ��   [  e f e I  - 2������
�� .miscactvnull��� ��� null��  ��   f  g�� g r   3 ; h i h 4   3 7�� j
�� 
xppb j m   5 6 k k � l l H c o m . a p p l e . p r e f e r e n c e . u n i v e r s a l a c c e s s i 1   7 :��
�� 
xpcp��   X m      m m�                                                                                  sprf  alis    t  	Tucholsky                  �:��H+   Oh%System Preferences.app                                          P���k!�        ����  	                Applications    �:�      �kh     Oh%  -Tucholsky:Applications:System Preferences.app   .  S y s t e m   P r e f e r e n c e s . a p p   	 T u c h o l s k y  #Applications/System Preferences.app   / ��  ��   U k   ?y n n  o p o l  ? ?�� q r��   q ' ! check proper number of arguments    r � s s B   c h e c k   p r o p e r   n u m b e r   o f   a r g u m e n t s p  t u t r   ? D v w v l  ? B x���� x n   ? B y z y 1   @ B��
�� 
leng z o   ? @���� 0 args  ��  ��   w o      ���� 0 numargs numArgs u  { | { Q   E � } ~  } k   H � � �  � � � r   H N � � � n   H L � � � 4   I L�� �
�� 
cobj � m   J K����  � o   H I���� 0 args   � o      ���� 0 dothis doThis �  � � � Z   O j � ����� � H   O ^ � � E   O ] � � � J   O [ � �  � � � m   O P � � � � �  c o m m a n d �  � � � m   P Q � � � � �  m e n u �  � � � m   Q T � � � � �  d o f i l e �  ��� � m   T W � � � � �  i n c l u d e��   � o   [ \���� 0 dothis doThis � n  a f � � � I   b f�������� 0 badfirstarg badFirstArg��  ��   �  f   a b��  ��   �  ��� � Z   k � � ��� � � ?   k n � � � o   k l���� 0 numargs numArgs � m   l m����  � k   q � � �  � � � r   q w � � � n   q u � � � 4   r u�� �
�� 
cobj � m   s t����  � o   q r���� 0 args   � o      ���� 0 	tmpdofile 	tmpDoFile �  ��� � Z   x � � ����� � =   x } � � � o   x y���� 0 	tmpdofile 	tmpDoFile � m   y | � � � � �   � r   � � � � � o   � ����� $0 defaulttmpdofile defaultTmpDoFile � o      ���� 0 	tmpdofile 	tmpDoFile��  ��  ��  ��   � r   � � � � � o   � ����� $0 defaulttmpdofile defaultTmpDoFile � o      ���� 0 	tmpdofile 	tmpDoFile��   ~ R      ������
�� .ascrerr ****      � ****��  ��    l  � � � � � � n  � � � � � I   � ��������� 0 badfirstarg badFirstArg��  ��   �  f   � � �   no arguments    � � � �    n o   a r g u m e n t s |  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � U O grab clipboard, strip totally blank lines, to check if there is anything to do    � � � � �   g r a b   c l i p b o a r d ,   s t r i p   t o t a l l y   b l a n k   l i n e s ,   t o   c h e c k   i f   t h e r e   i s   a n y t h i n g   t o   d o �  � � � l  � ��� � ���   � 9 3   Aside: perhaps this should be on the emacs side?    � � � � f       A s i d e :   p e r h a p s   t h i s   s h o u l d   b e   o n   t h e   e m a c s   s i d e ? �  � � � l  � ��� � ���   � X R   for now it will stay here... could be wrong behavior, plus it is simpler to do     � � � � �       f o r   n o w   i t   w i l l   s t a y   h e r e . . .   c o u l d   b e   w r o n g   b e h a v i o r ,   p l u s   i t   i s   s i m p l e r   t o   d o   �  � � � l  � ��� � ���   �       in Applescript (!)    � � � � .           i n   A p p l e s c r i p t   ( ! ) �  � � � r   � � � � � n  � � � � � I   � ��� ����� "0 stripblanklines stripBlankLines �  ��� � I  � �������
�� .JonsgClp****    ��� null��  ��  ��  ��   �  f   � � � o      ���� 0 pasteme pasteMe �  � � � Z   � � � ����� � =   � � � � � o   � ����� 0 pasteme pasteMe � m   � � � � � � �   � O   � � � � � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � , N o t h i n g   t o   s e n d   S t a t a ! � �� ���
�� 
btns � J   � � � �  ��� � m   � � � � � � �  C a n c e l��  ��   � m   � � � ��                                                                                  MACS  alis    h  	Tucholsky                  �:��H+   Oh
Finder.app                                                      O�Ƙ�        ����  	                CoreServices    �:�      ƘK�     Oh Og� Og�  0Tucholsky:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � \ V in the best of worlds, it would be possible to allow looping through the instances of    � � � � �   i n   t h e   b e s t   o f   w o r l d s ,   i t   w o u l d   b e   p o s s i b l e   t o   a l l o w   l o o p i n g   t h r o u g h   t h e   i n s t a n c e s   o f �  � � � l  � ��� � ���   � 5 /   Stata to send the same code to each instance    � � � � ^       S t a t a   t o   s e n d   t h e   s a m e   c o d e   t o   e a c h   i n s t a n c e �  � � � O   � �   r   � � l  � ����� 6  � � 2   � ���
�� 
prcs E   � � 1   � ���
�� 
pnam m   � �		 �

 
 S t a t a��  ��   o      ���� 0 	thestatas 	theStatas m   � ��                                                                                  sevs  alis    �  	Tucholsky                  �:��H+   OhSystem Events.app                                               P��7��        ����  	                CoreServices    �:�      �8'7     Oh Og� Og�  7Tucholsky:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��   �  l  � ���������  ��  ��    r   � � l  � ����� I  � �����
�� .corecnte****       **** o   � ����� 0 	thestatas 	theStatas��  ��  ��   o      ���� 0 howmanystatas howManyStatas  Z   �H�� =  � � o   � ����� 0 howmanystatas howManyStatas m   � �����   O   � k   �  I  �������
�� .sysobeepnull��� ��� long��  ��    ��  I �!"
� .sysodlogaskr        TEXT! m  ## �$$ " N o   S t a t a   r u n n i n g !" �~%�}
�~ 
btns% J  && '�|' m  
(( �))  C a n c e l�|  �}  ��   m   � �**�                                                                                  MACS  alis    h  	Tucholsky                  �:��H+   Oh
Finder.app                                                      O�Ƙ�        ����  	                CoreServices    �:�      ƘK�     Oh Og� Og�  0Tucholsky:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ��   k  H++ ,-, Z  4./�{�z. ?  010 o  �y�y 0 howmanystatas howManyStatas1 m  �x�x / k  022 343 O  .565 I  -�w78
�w .sysodlogaskr        TEXT7 m   #99 �:: @ n o t h i n g   f o r   m u l t i p l e   s t a t a ' s   y e t8 �v;�u
�v 
btns; J  $)<< =�t= m  $'>> �??  C a n c e l�t  �u  6 m  @@�                                                                                  MACS  alis    h  	Tucholsky                  �:��H+   Oh
Finder.app                                                      O�Ƙ�        ����  	                CoreServices    �:�      ƘK�     Oh Og� Og�  0Tucholsky:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  4 ABA l //�sCD�s  C : 4 Stata can use the same name for different processes   D �EE h   S t a t a   c a n   u s e   t h e   s a m e   n a m e   f o r   d i f f e r e n t   p r o c e s s e sB FGF l //�rHI�r  H J D so... the it is impossible to cycle through Stata processes by name   I �JJ �   s o . . .   t h e   i t   i s   i m p o s s i b l e   t o   c y c l e   t h r o u g h   S t a t a   p r o c e s s e s   b y   n a m eG K�qK l  //�pLM�p  L � � tell application "System Events"					set theStatas to (the file of every process whose name contains "Stata")				 end tell				repeat with aStata in theStatas				end repeat
				   M �NNj   t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 	 	 	 	 s e t   t h e S t a t a s   t o   ( t h e   f i l e   o f   e v e r y   p r o c e s s   w h o s e   n a m e   c o n t a i n s   " S t a t a " )  	 	 	 	   e n d   t e l l  	 	 	 	 r e p e a t   w i t h   a S t a t a   i n   t h e S t a t a s  	 	 	 	 e n d   r e p e a t 
 	 	 	 	�q  �{  �z  - OPO l 55�oQR�o  Q : 4 know there is exactly one instance of Stata running   R �SS h   k n o w   t h e r e   i s   e x a c t l y   o n e   i n s t a n c e   o f   S t a t a   r u n n i n gP TUT l 55�nVW�n  V   can finally get to work   W �XX 0   c a n   f i n a l l y   g e t   t o   w o r kU Y�mY O  5HZ[Z r  9G\]\ l 9C^�l�k^ l 9C_�j�i_ n  9C`a` 1  ?C�h
�h 
pnama l 9?b�g�fb n  9?cdc 4 <?�ee
�e 
cobje m  =>�d�d d o  9<�c�c 0 	thestatas 	theStatas�g  �f  �j  �i  �l  �k  ] o      �b�b 0 thestataname theStataName[ m  56ff�                                                                                  sevs  alis    �  	Tucholsky                  �:��H+   OhSystem Events.app                                               P��7��        ����  	                CoreServices    �:�      �8'7     Oh Og� Og�  7Tucholsky:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��  �m   ghg l II�a�`�_�a  �`  �_  h iji l II�^kl�^  k $  Stata *must* be made active		   l �mm <   S t a t a   * m u s t *   b e   m a d e   a c t i v e 	 	j non O  IZpqp I TY�]�\�[
�] .miscactvnull��� ��� null�\  �[  q 4  IQ�Zr
�Z 
cappr o  MP�Y�Y 0 thestataname theStataNameo sts l [[�X�W�V�X  �W  �V  t u�Uu Z  [yvw�Txv = [`yzy o  [\�S�S 0 dothis doThisz m  \_{{ �||  c o m m a n dw n cl}~} I  dl�R�Q�R 0 pastetmpstata pasteTmpStata ��� o  dg�P�P 0 thestataname theStataName� ��O� o  gh�N�N 0 pasteme pasteMe�O  �Q  ~  f  cd�T  x n oy��� I  py�M��L�M 0 dotmpdofile doTmpDofile� ��� o  ps�K�K 0 thestataname theStataName� ��� o  st�J�J 0 	tmpdofile 	tmpDoFile� ��I� o  tu�H�H 0 dothis doThis�I  �L  �  f  op�U   Q ' !- from test of UI being turned on    R ��� B -   f r o m   t e s t   o f   U I   b e i n g   t u r n e d   o n��    ��� l     �G�F�E�G  �F  �E  � ��� i    ��� I      �D�C�B�D 0 badfirstarg badFirstArg�C  �B  � O     ��� I   �A��
�A .sysodlogaskr        TEXT� m    �� ��� \ T h e   f i r s t   a r g u m e n t   m u s t   b e   " c o m m a n d "   o r   " m e n u "� �@��?
�@ 
btns� J    	�� ��>� m    �� ���  C a n c e l�>  �?  � m     ���                                                                                  MACS  alis    h  	Tucholsky                  �:��H+   Oh
Finder.app                                                      O�Ƙ�        ����  	                CoreServices    �:�      ƘK�     Oh Og� Og�  0Tucholsky:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  � ��� l     �=�<�;�=  �<  �;  � ��� i    ��� I      �:��9�: 0 dotmpdofile doTmpDofile� ��� o      �8�8 0 	stataname 	stataName� ��� o      �7�7 0 	tmpdofile 	tmpDoFile� ��6� o      �5�5 0 dowhat doWhat�6  �9  � k     �� ��� l     �4���4  � K E if multiple instances ever work, be sure this gets written just once   � ��� �   i f   m u l t i p l e   i n s t a n c e s   e v e r   w o r k ,   b e   s u r e   t h i s   g e t s   w r i t t e n   j u s t   o n c e� ��� q      �� �3��3 
0 tmpdir  � �2��2 0 	tmpdofile 	tmpDoFile� �1�0�1 "0 stupidapplefile stupidAppleFile�0  � ��� l     �/���/  � X R need to change this, because it changes the working directory in Stata on the Mac   � ��� �   n e e d   t o   c h a n g e   t h i s ,   b e c a u s e   i t   c h a n g e s   t h e   w o r k i n g   d i r e c t o r y   i n   S t a t a   o n   t h e   M a c� ��� r     ��� I    �.��-
�. .sysoexecTEXT���     TEXT� m     �� ��� 8 g e t c o n f   D A R W I N _ U S E R _ T E M P _ D I R�-  � o      �,�, 
0 tmpdir  � ��� r    ��� l   ��+�*� b    ��� o    	�)�) 
0 tmpdir  � o   	 
�(�( 0 	tmpdofile 	tmpDoFile�+  �*  � o      �'�' 0 	tmpdofile 	tmpDoFile� ��� l   �&���&  � < 6 need applescript-style file name to write to the file   � ��� l   n e e d   a p p l e s c r i p t - s t y l e   f i l e   n a m e   t o   w r i t e   t o   t h e   f i l e� ��� r    ��� 4    �%�
�% 
psxf� o    �$�$ 0 	tmpdofile 	tmpDoFile� o      �#�# "0 stupidapplefile stupidAppleFile� ��� Q    a���� k    A�� ��� I   �"��
�" .rdwropenshor       file� o    �!�! "0 stupidapplefile stupidAppleFile� � ��
�  
perm� m    �
� boovtrue�  � ��� I    '���
� .rdwrseofnull���     ****� o     !�� "0 stupidapplefile stupidAppleFile� ���
� 
set2� m   " #��  �  � ��� I  ( 3���
� .rdwrwritnull���     ****� l  ( -���� I  ( -���
� .JonsgClp****    ��� null�  �  �  �  � ���
� 
refn� o   . /�� "0 stupidapplefile stupidAppleFile�  � ��� I  4 ;���
� .rdwrwritnull���     ****� o   4 5�
� 
ret � ���
� 
refn� o   6 7�� "0 stupidapplefile stupidAppleFile�  � ��
� I  < A�	��
�	 .rdwrclosnull���     ****� o   < =�� "0 stupidapplefile stupidAppleFile�  �
  � R      ���
� .ascrerr ****      � ****�  �  � k   I a�� ��� I  I N���
� .rdwrclosnull���     ****� o   I J�� "0 stupidapplefile stupidAppleFile�  � �� � O   O a��� I  S `����
�� .sysodlogaskr        TEXT� m   S T�� ��� L H a d   t r o u b l e   w i t h   t h e   t e m p o r a r y   d o - f i l e� �����
�� 
btns� J   W \�� ���� m   W Z�� ���  C a n c e l��  ��  � m   O P���                                                                                  MACS  alis    h  	Tucholsky                  �:��H+   Oh
Finder.app                                                      O�Ƙ�        ����  	                CoreServices    �:�      ƘK�     Oh Og� Og�  0Tucholsky:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  �   �    l  b b����   #  applescript really is a pita    � :   a p p l e s c r i p t   r e a l l y   i s   a   p i t a  O   b q I  k p������
�� .miscactvnull��� ��� null��  ��   4   b h��	
�� 
capp	 o   f g���� 0 	stataname 	stataName 
��
 Z   r �� =   r w o   r s���� 0 dowhat doWhat m   s v �  m e n u Q   z � I   } ������� 0 	doviamenu 	doViaMenu �� o   ~ ���� 0 	stataname 	stataName��  ��   R      ������
�� .ascrerr ****      � ****��  ��   k   � �  I   � ������� "0 createmenuitems createMenuItems  o   � ����� 0 	stataname 	stataName �� o   � ����� 0 	tmpdofile 	tmpDoFile��  ��    l  � ��� !��    8 2 need to be sure the menu item exists on first try   ! �"" d   n e e d   t o   b e   s u r e   t h e   m e n u   i t e m   e x i s t s   o n   f i r s t   t r y #$# I  � ���%��
�� .sysodelanull��� ��� nmbr% m   � ����� ��  $ &��& Q   � �'()' I   � ���*���� 0 	doviamenu 	doViaMenu* +��+ o   � ����� 0 	stataname 	stataName��  ��  ( R      ������
�� .ascrerr ****      � ****��  ��  ) O   � �,-, I  � ���./
�� .sysodlogaskr        TEXT. m   � �00 �11 v S o m e t h i n g   w e n t   w r o n g . . .   i s   y o u r   s t a t a   v e r s i o n   s e t   p r o p e r l y ?/ ��2��
�� 
btns2 J   � �33 4��4 m   � �55 �66  C a n c e l��  ��  - m   � �77�                                                                                  MACS  alis    h  	Tucholsky                  �:��H+   Oh
Finder.app                                                      O�Ƙ�        ����  	                CoreServices    �:�      ƘK�     Oh Og� Og�  0Tucholsky:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ��  ��   l  � 89:8 Z   � ;<��=; =   � �>?> o   � ����� 0 dowhat doWhat? m   � �@@ �AA  i n c l u d e< Q   � �BCDB n  � �EFE I   � ���G���� 0 pastetmpstata pasteTmpStataG HIH o   � ����� 0 	stataname 	stataNameI J��J b   � �KLK m   � �MM �NN  i n c l u d e  L o   � ����� 0 	tmpdofile 	tmpDoFile��  ��  F  f   � �C R      ������
�� .ascrerr ****      � ****��  ��  D O   � �OPO I  � ���QR
�� .sysodlogaskr        TEXTQ m   � �SS �TT \ H a d   t r o u b l e   r u n n i n g   v i a   t e m p o r a r y   i n c l u d e   f i l eR ��U��
�� 
btnsU J   � �VV W��W m   � �XX �YY  C a n c e l��  ��  P m   � �ZZ�                                                                                  MACS  alis    h  	Tucholsky                  �:��H+   Oh
Finder.app                                                      O�Ƙ�        ����  	                CoreServices    �:�      ƘK�     Oh Og� Og�  0Tucholsky:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  ��  = l  � [\][ Q   � ^_`^ k   �aa bcb l  � ���de��  d = 7 'open' changes directory as an unavoidable side-effect   e �ff n   ' o p e n '   c h a n g e s   d i r e c t o r y   a s   a n   u n a v o i d a b l e   s i d e - e f f e c tc ghg l  � ���ij��  i   open stupidAppleFile   j �kk *   o p e n   s t u p i d A p p l e F i l eh l��l n  �mnm I   ���o���� 0 pastetmpstata pasteTmpStatao pqp o   � ����� 0 	stataname 	stataNameq r��r b   � sts m   � �uu �vv  d o  t o   � ����� 0 	tmpdofile 	tmpDoFile��  ��  n  f   � ���  _ R      ������
�� .ascrerr ****      � ****��  ��  ` O   wxw I ��yz
�� .sysodlogaskr        TEXTy m  {{ �|| R H a d   t r o u b l e   r u n n i n g   v i a   t e m p o r a r y   d o - f i l ez ��}��
�� 
btns} J  ~~ �� m  �� ���  C a n c e l��  ��  x m  ���                                                                                  MACS  alis    h  	Tucholsky                  �:��H+   Oh
Finder.app                                                      O�Ƙ�        ����  	                CoreServices    �:�      ƘK�     Oh Og� Og�  0Tucholsky:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  \   doing via dofile   ] ��� "   d o i n g   v i a   d o f i l e9 I C doing via dofile or include--- needs fixing for multiple instances   : ��� �   d o i n g   v i a   d o f i l e   o r   i n c l u d e - - -   n e e d s   f i x i n g   f o r   m u l t i p l e   i n s t a n c e s��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 	doviamenu 	doViaMenu� ���� o      ���� 0 	stataname 	stataName��  ��  � O     /��� Z    .������� 1    ��
�� 
uien� O    *��� I   )�����
�� .prcsclicuiel    ��� uiel� n    %��� 4   " %���
�� 
menI� m   # $�� ���  r u n   t m p   f i l e� n    "��� 4    "���
�� 
menE� m     !���� � n    ��� 4    ���
�� 
menI� m    �� ��� & A p p l e s c r i p t   h e l p e r s� n    ��� 4    ���
�� 
menE� m    ���� � n    ��� 4    ���
�� 
mbri� m    �� ���  U s e r� 4    ���
�� 
mbar� m    ���� ��  � 4    ���
�� 
pcap� o    ���� 0 	stataname 	stataName��  ��  � m     ���                                                                                  sevs  alis    �  	Tucholsky                  �:��H+   OhSystem Events.app                                               P��7��        ����  	                CoreServices    �:�      �8'7     Oh Og� Og�  7Tucholsky:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� "0 createmenuitems createMenuItems� ��� o      ���� 0 	stataname 	stataName� ���� o      ���� 0 	tmpdofile 	tmpDoFile��  ��  � O     G��� Z    F������� 1    ��
�� 
uien� O    B��� k    A�� ��� l   ������  � * $ get the command window to the front   � ��� H   g e t   t h e   c o m m a n d   w i n d o w   t o   t h e   f r o n t� ��� I   #�����
�� .prcsclicuiel    ��� uiel� n   ��� 4    ���
�� 
menI� m    �� ���  C o m m a n d� n    ��� 4    ���
�� 
menE� m    �� ���  W i n d o w� n   ��� 4    ���
�� 
mbri� m    �� ���  W i n d o w� 4    ���
�� 
mbar� m    ���� ��  � ��� I  $ +�����
�� .prcskprsnull���    utxt� b   $ '��� m   $ %�� ��� r w i n d o w   m e n u   a p p e n d   s u b m e n u   " s t U s e r "   " A p p l e s c r i p t   h e l p e r s "� o   % &��
�� 
ret ��  � ��� I  , 7�����
�� .prcskprsnull���    utxt� b   , 3��� b   , 1��� b   , /��� m   , -�� ��� � w i n d o w   m e n u   a p p e n d   i t e m   " A p p l e s c r i p t   h e l p e r s "   " r u n   t m p   f i l e "   " d o  � o   - .���� 0 	tmpdofile 	tmpDoFile� m   / 0�� ���  "� o   1 2��
�� 
ret ��  � ���� I  8 A�����
�� .prcskprsnull���    utxt� b   8 =��� m   8 ;�� ��� & w i n d o w   m e n u   r e f r e s h� o   ; <��
�� 
ret ��  ��  � 4    ���
�� 
pcap� o    ���� 0 	stataname 	stataName��  ��  � m     ���                                                                                  sevs  alis    �  	Tucholsky                  �:��H+   OhSystem Events.app                                               P��7��        ����  	                CoreServices    �:�      �8'7     Oh Og� Og�  7Tucholsky:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ���~� 0 pastetmpstata pasteTmpStata� ��� o      �}�} 0 	stataname 	stataName� ��|� o      �{�{ 0 pasteme pasteMe�|  �~  � k     ��� ��� q      �� �z�y�z 0 oldclipboard oldClipBoard�y  � � � r      I    �x�w�v
�x .JonsgClp****    ��� null�w  �v   o      �u�u 0 oldclipboard oldClipBoard   Q    � k    h 	
	 I   �t�s
�t .JonspClpnull���     **** l   �r�q c     o    �p�p 0 pasteme pasteMe m    �o
�o 
ctxt�r  �q  �s  
 �n O    h Z    g�m�l 1    �k
�k 
uien O    c k   % b  I  % 6�j�i
�j .prcsclicuiel    ��� uiel n  % 2 4   / 2�h
�h 
menI m   0 1 �  C o m m a n d n   % /  4   , /�g!
�g 
menE! m   - ."" �##  W i n d o w  n  % ,$%$ 4   ) ,�f&
�f 
mbri& m   * +'' �((  W i n d o w% 4   % )�e)
�e 
mbar) m   ' (�d�d �i   *+* I  7 <�c,�b
�c .sysodelanull��� ��� nmbr, m   7 8-- ?ə������b  + ./. I  = T�a0�`
�a .prcsclicuiel    ��� uiel0 n  = P121 4   K P�_3
�_ 
menI3 l 	 L O4�^�]4 m   L O55 �66 
 P a s t e�^  �]  2 n   = K787 4   F K�\9
�\ 
menE9 m   G J:: �;;  E d i t8 n  = F<=< 4   A F�[>
�[ 
mbri> m   B E?? �@@  E d i t= 4   = A�ZA
�Z 
mbarA m   ? @�Y�Y �`  / BCB l  U U�XDE�X  D > 8 added delay when seeing odd behavior on machine at work   E �FF p   a d d e d   d e l a y   w h e n   s e e i n g   o d d   b e h a v i o r   o n   m a c h i n e   a t   w o r kC GHG l  U U�WIJ�W  I U O it seems that a delay of under 0.2 seconds makes things weird on fast machines   J �KK �   i t   s e e m s   t h a t   a   d e l a y   o f   u n d e r   0 . 2   s e c o n d s   m a k e s   t h i n g s   w e i r d   o n   f a s t   m a c h i n e sH LML I  U Z�VN�U
�V .sysodelanull��� ��� nmbrN m   U VOO ?ə������U  M P�TP I  [ b�SQ�R
�S .prcskprsnull���    utxtQ o   [ ^�Q
�Q 
ret �R  �T   4    "�PR
�P 
pcapR o     !�O�O 0 	stataname 	stataName�m  �l   m    SS�                                                                                  sevs  alis    �  	Tucholsky                  �:��H+   OhSystem Events.app                                               P��7��        ����  	                CoreServices    �:�      �8'7     Oh Og� Og�  7Tucholsky:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p   	 T u c h o l s k y  -System/Library/CoreServices/System Events.app   / ��  �n   R      �N�M�L
�N .ascrerr ****      � ****�M  �L   k   p �TT UVU I  p u�KW�J
�K .JonspClpnull���     ****W o   p q�I�I 0 oldclipboard oldClipBoard�J  V X�HX O   v �YZY I  | ��G[\
�G .sysodlogaskr        TEXT[ m   | ]] �^^ V H a d   t r o u b l e   p a s t i n g   t o   S t a t a   c o m m a n d   w i n d o w\ �F_�E
�F 
btns_ J   � �`` a�Da m   � �bb �cc  C a n c e l�D  �E  Z m   v ydd�                                                                                  MACS  alis    h  	Tucholsky                  �:��H+   Oh
Finder.app                                                      O�Ƙ�        ����  	                CoreServices    �:�      ƘK�     Oh Og� Og�  0Tucholsky:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p   	 T u c h o l s k y  &System/Library/CoreServices/Finder.app  / ��  �H   e�Ce I  � ��Bf�A
�B .JonspClpnull���     ****f o   � ��@�@ 0 oldclipboard oldClipBoard�A  �C  � ghg l     �?�>�=�?  �>  �=  h iji i    klk I      �<m�;�< "0 stripblanklines stripBlankLinesm n�:n o      �9�9 0 thetext theText�:  �;  l k     ioo pqp q      rr �8s�8 0 theparas theParass �7�6�7 0 thepara thePara�6  q tut r     vwv l    x�5�4x n     yzy 2   �3
�3 
cparz o     �2�2 0 thetext theText�5  �4  w o      �1�1 0 theparas theParasu {|{ r    
}~} J    �0�0  ~ o      �/�/ 0 thecleanstuff theCleanStuff| � X    ^��.�� k    Y�� ��� r    ��� m    �-
�- boovtrue� o      �,�, 0 eraseme  � ��� X    I��+�� Z   1 D���*�)� H   1 8�� E  1 7��� J   1 5�� ��� m   1 2�� ���   � ��(� m   2 3�� ���  	�(  � o   5 6�'�' 0 achar aChar� k   ; @�� ��� r   ; >��� m   ; <�&
�& boovfals� o      �%�% 0 eraseme  � ��$�  S   ? @�$  �*  �)  �+ 0 achar aChar� n   " %��� 2   # %�#
�# 
cha � o   " #�"�" 0 thepara thePara� ��!� Z   J Y��� �� H   J L�� o   J K�� 0 eraseme  � r   O U��� l  O R���� c   O R��� o   O P�� 0 thepara thePara� m   P Q�
� 
TEXT�  �  � l     ���� n      ���  ;   S T� o   R S�� 0 thecleanstuff theCleanStuff�  �  �   �  �!  �. 0 thepara thePara� o    �� 0 theparas theParas� ��� r   _ d��� o   _ `�
� 
ret � l     ���� 1   ` c�
� 
txdl�  �  � ��� L   e i�� l  e h���� c   e h��� o   e f�� 0 thecleanstuff theCleanStuff� m   f g�
� 
TEXT�  �  �  j ��� l     ���
�  �  �
  � ��	� l     ����  �  �  �	       ���������������� �  � ����������������������������
�� .aevtoappnull  �   � ****�� 0 badfirstarg badFirstArg�� 0 dotmpdofile doTmpDofile�� 0 	doviamenu 	doViaMenu�� "0 createmenuitems createMenuItems�� 0 pastetmpstata pasteTmpStata�� "0 stripblanklines stripBlankLines�� 0 	thestatas 	theStatas�� 0 thestataname theStataName��  ��  ��  ��  ��  � �� !��������
�� .aevtoappnull  �   � ****�� 0 args  ��  � ������������������ 0 args  �� 0 numargs numArgs�� 0 pasteme pasteMe�� 0 dothis doThis�� 0 	tmpdofile 	tmpDoFile�� 0 howmanystatas howManyStatas�� $0 defaulttmpdofile defaultTmpDoFile�� 0 uiok UIOK� - 9 N�� m ^�� c������ k������ � � � ����� ��������� � � � ������	������#(9>����{����
�� 
uien
�� 
btns
�� .sysodlogaskr        TEXT
�� .miscactvnull��� ��� null
�� 
xppb
�� 
xpcp
�� 
leng
�� 
cobj�� �� 0 badfirstarg badFirstArg��  ��  
�� .JonsgClp****    ��� null�� "0 stripblanklines stripBlankLines
�� 
prcs�  
�� 
pnam�� 0 	thestatas 	theStatas
�� .corecnte****       ****
�� .sysobeepnull��� ��� long�� 0 thestataname theStataName
�� 
capp�� 0 pastetmpstata pasteTmpStata�� 0 dotmpdofile doTmpDofile��z�E�O� *�,E eE�Y fE�UO� "� ���kvl O*j O*��/*�,FUY<��,E�O J��k/E�O��a a a v� 
)j+ Y hO�k ��l/E�O�a   �E�Y hY �E�W X  )j+ O)*j k+ E�O�a   a  a �a kvl UY hO� *a -a [a ,\Za  @1E` !UO_ !j "E�O�j  a  *j #Oa $�a %kvl UY 6�k a  a &�a 'kvl UOPY hO� _ !�k/a ,E` (UO*a )_ (/ *j UO�a *  )_ (�l+ +Y )_ (��m+ ,� ������������� 0 badfirstarg badFirstArg��  ��  �  � �������
�� 
btns
�� .sysodlogaskr        TEXT�� � ���kvl U� ������������� 0 dotmpdofile doTmpDofile�� ����� �  �������� 0 	stataname 	stataName�� 0 	tmpdofile 	tmpDoFile�� 0 dowhat doWhat��  � ������������ 0 	stataname 	stataName�� 0 	tmpdofile 	tmpDoFile�� 0 dowhat doWhat�� 
0 tmpdir  �� "0 stupidapplefile stupidAppleFile� #��������������������������������������������05@M��SXu{�
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
�� .miscactvnull��� ��� null�� 0 	doviamenu 	doViaMenu�� "0 createmenuitems createMenuItems
�� .sysodelanull��� ��� nmbr�� 0 pastetmpstata pasteTmpStata��!�j E�O��%E�O*�/E�O .��el O��jl O*j �l 	O��l 	O�j W X  �j O� �a a kvl UO*a �/ *j UO�a   I *�k+ W :X  *��l+ Okj O *�k+ W X  � a a a kvl UY a�a   / )�a �%l+ W X  � a a a kvl UY , )�a  �%l+ W X  � a !a a "kvl U� ������������� 0 	doviamenu 	doViaMenu�� ����� �  ���� 0 	stataname 	stataName��  � ���� 0 	stataname 	stataName� ������������������
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
UY hU� ������������� "0 createmenuitems createMenuItems�� ����� �  ������ 0 	stataname 	stataName�� 0 	tmpdofile 	tmpDoFile��  � ������ 0 	stataname 	stataName�� 0 	tmpdofile 	tmpDoFile� ��������������������������
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
�� .prcsclicuiel    ��� uiel
�� 
ret 
�� .prcskprsnull���    utxt�� H� D*�,E <*�/ 1*�k/��/��/��/j 
O��%j O�%�%�%j Oa �%j UY hU� ������������� 0 pastetmpstata pasteTmpStata�� ����� �  ������ 0 	stataname 	stataName�� 0 pasteme pasteMe��  � ��~�}� 0 	stataname 	stataName�~ 0 pasteme pasteMe�} 0 oldclipboard oldClipBoard� �|�{�zS�y�x�w�v'�u"�t�s-�r?:5�q�p�o�nd]�mb�l
�| .JonsgClp****    ��� null
�{ 
ctxt
�z .JonspClpnull���     ****
�y 
uien
�x 
pcap
�w 
mbar
�v 
mbri
�u 
menE
�t 
menI
�s .prcsclicuiel    ��� uiel
�r .sysodelanull��� ��� nmbr
�q 
ret 
�p .prcskprsnull���    utxt�o  �n  
�m 
btns
�l .sysodlogaskr        TEXT�� �*j  E�O b��&j O� R*�,E J*�/ ?*�k/��/��/��/j O�j O*�k/�a /�a /�a /j O�j O_ j UY hUW #X  �j Oa  a a a kvl UO�j � �kl�j�i���h�k "0 stripblanklines stripBlankLines�j �g��g �  �f�f 0 thetext theText�i  � �e�d�c�b�a�`�e 0 thetext theText�d 0 theparas theParas�c 0 thepara thePara�b 0 thecleanstuff theCleanStuff�a 0 eraseme  �` 0 achar aChar� 
�_�^�]�\�[���Z�Y�X
�_ 
cpar
�^ 
kocl
�] 
cobj
�\ .corecnte****       ****
�[ 
cha 
�Z 
TEXT
�Y 
ret 
�X 
txdl�h j��-E�OjvE�O R�[��l kh eE�O )��-[��l kh ��lv� 
fE�OY h[OY��O� ��&�6FY h[OY��O�*�,FO��&� �W��W �  �� ��  N�V�
�V 
pcap� ���  S t a t a M P� ���  S t a t a M P�  �  �  �  �   ascr  ��ޭ