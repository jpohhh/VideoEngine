FasdUAS 1.101.10   ��   ��    k             j     �� �� &0 breakfastshortlog BreakfastShortLog  m     ��
�� 
msng    	  j    �� 
�� $0 breakfastlonglog BreakfastLongLog 
 m    ��
�� 
msng 	     j    �� �� 0 extensionlist ExtensionList  m    ��
�� 
msng      j   	 �� ��  0 calledbyscript CalledByScript  m   	 
��
�� 
msng      j    �� �� 0 	outfolder 	OutFolder  m    ��
�� 
msng      j    �� �� 0 watchfolder WatchFolder  m    ��
�� 
msng      j    �� �� 0 
addeditems 
addedItems  m    ��
�� 
msng      j    �� �� "0 encodingoptions EncodingOptions  m    ��
�� 
msng      j    �� �� 0 	queuepath 	QueuePath  m    ��
�� 
msng     !   j    �� "�� 0 resourcepath resourcePath " m    ��
�� 
msng !  # $ # j     �� %�� 0 apppath AppPath % m    ��
�� 
msng $  & ' & l     ��������  ��  ��   '  ( ) ( l     ��������  ��  ��   )  * + * l     ��������  ��  ��   +  ,�� , i   ! $ - . - I     �� / 0
�� .facofgetnull���     alis / o      ���� 0 
thisfolder 
thisFolder 0 �� 1��
�� 
flst 1 o      ���� 0 
addeditems 
addedItems��   . k     2 2  3 4 3 r      5 6 5 J      7 7  8�� 8 m      9 9 � : :  ��   6 n      ; < ; 1    ��
�� 
txdl < 1    ��
�� 
ascr 4  = > = l   �� ? @��   ? E ? Get our properties from the user defaults. Get the logs first.    @ � A A ~   G e t   o u r   p r o p e r t i e s   f r o m   t h e   u s e r   d e f a u l t s .   G e t   t h e   l o g s   f i r s t . >  B C B r     D E D l    F���� F I   �� G��
�� .sysoexecTEXT���     TEXT G m    	 H H � I I h d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   B r e a k f a s t S h o r t L o g��  ��  ��   E o      ���� &0 breakfastshortlog BreakfastShortLog C  J K J r     L M L l    N���� N I   �� O��
�� .sysoexecTEXT���     TEXT O m     P P � Q Q f d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   B r e a k f a s t L o n g L o g��  ��  ��   M o      ���� $0 breakfastlonglog BreakfastLongLog K  R S R r     + T U T l    % V���� V I    %�� W��
�� .sysoexecTEXT���     TEXT W m     ! X X � Y Y T d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   A p p P a t h��  ��  ��   U o      ���� 0 apppath AppPath S  Z [ Z l  , ,��������  ��  ��   [  \ ] \ l  , ,��������  ��  ��   ]  ^ _ ^ l  , ,�� ` a��   ` N H First we go after the extensions, because they're the most complicated.    a � b b �   F i r s t   w e   g o   a f t e r   t h e   e x t e n s i o n s ,   b e c a u s e   t h e y ' r e   t h e   m o s t   c o m p l i c a t e d . _  c d c r   , 3 e f e l  , 1 g���� g I  , 1�� h��
�� .sysoexecTEXT���     TEXT h m   , - i i � j j ` d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   E x t e n s i o n L i s t��  ��  ��   f o      ���� 0 extensiontemp ExtensionTemp d  k l k r   4 9 m n m n  4 7 o p o 1   5 7��
�� 
txdl p 1   4 5��
�� 
ascr n o      ���� 0 olddelimiters oldDelimiters l  q r q r   : ? s t s m   : ; u u � v v  ; t n      w x w 1   < >��
�� 
txdl x 1   ; <��
�� 
ascr r  y z y s   @ J { | { n   @ C } ~ } 2  A C��
�� 
citm ~ o   @ A���� 0 extensiontemp ExtensionTemp | o      ���� 0 extensionlist ExtensionList z   �  r   K P � � � o   K L���� 0 olddelimiters oldDelimiters � n      � � � 1   M O��
�� 
txdl � 1   L M��
�� 
ascr �  � � � l  Q Q�� � ���   �   Log Extension List    � � � � &   L o g   E x t e n s i o n   L i s t �  � � � l  Q Q�� � ���   � � � do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time We will be looking for EXTENSIONS: " & (item 1 of ExtensionList) & " as well as " & (item 2 of ExtensionList) & " >> " & BreakfastLongLog    � � � ��   d o   s h e l l   s c r i p t   " t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   W e   w i l l   b e   l o o k i n g   f o r   E X T E N S I O N S :   "   &   ( i t e m   1   o f   E x t e n s i o n L i s t )   &   "   a s   w e l l   a s   "   &   ( i t e m   2   o f   E x t e n s i o n L i s t )   &   "   > >   "   &   B r e a k f a s t L o n g L o g �  � � � l  Q Q��������  ��  ��   �  � � � l  Q Q�� � ���   � ( " Now the rest of the properties...    � � � � D   N o w   t h e   r e s t   o f   t h e   p r o p e r t i e s . . . �  � � � r   Q ^ � � � b   Q X � � � l  Q V ����� � I  Q V�� ���
�� .sysoexecTEXT���     TEXT � m   Q R � � � � � X d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   O u t F o l d e r��  ��  ��   � m   V W � � � � �  / � o      ���� 0 	outfolder 	OutFolder �  � � � r   _ j � � � l  _ d ����� � I  _ d�� ���
�� .sysoexecTEXT���     TEXT � m   _ ` � � � � � d d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   E n c o d i n g O p t i o n s��  ��  ��   � o      ���� "0 encodingoptions EncodingOptions �  � � � r   k v � � � l  k p ����� � I  k p�� ���
�� .sysoexecTEXT���     TEXT � m   k l � � � � � X d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   Q u e u e P a t h��  ��  ��   � o      ���� 0 	queuepath 	QueuePath �  � � � l  w w��������  ��  ��   �  � � � l  w w�� � ���   � Q K Now we set our own default to let the app know we want it to do the deal.     � � � � �   N o w   w e   s e t   o u r   o w n   d e f a u l t   t o   l e t   t h e   a p p   k n o w   w e   w a n t   i t   t o   d o   t h e   d e a l .   �  � � � I  w |�� ���
�� .sysoexecTEXT���     TEXT � m   w x � � � � � � d e f a u l t s   w r i t e   c o m . B r e a k f a s t . e n g i n e   C a l l e d B y S c r i p t   - b o o l e a n   ' y e s '��   �  � � � l  } }��������  ��  ��   �  � � � l  } }��������  ��  ��   �  ��� � Q   } � ��� � k   � � �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 6 0log that an event occured to trigger this script    � � � � ` l o g   t h a t   a n   e v e n t   o c c u r e d   t o   t r i g g e r   t h i s   s c r i p t �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � P t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   � l  � � ����� � n   � � � � � m   � ���
�� 
nmbr � n   � � � � � 2  � ���
�� 
cobj � o   � ����� 0 
addeditems 
addedItems��  ��   � m   � � � � � � �     i t e m s   a d d e d   > >   � o   � ����� &0 breakfastshortlog BreakfastShortLog��   �  � � � l  � ��� � ���   � 8 2iterate through all the files added to this folder    � � � � d i t e r a t e   t h r o u g h   a l l   t h e   f i l e s   a d d e d   t o   t h i s   f o l d e r �  � � � r   � � � � � m   � ���  � o      �~�~ 0 i   �  � � � W   � � � � k   �� � �  � � � r   � � � � � n   � � � � � 4   � ��} �
�} 
cobj � o   � ��|�| 0 i   � o   � ��{�{ 0 
addeditems 
addedItems � o      �z�z 0 thisitem ThisItem �  � � � r   � � � � � l  � � ��y�x � I  � ��w ��v
�w .sysonfo4asfe        file � o   � ��u�u 0 thisitem ThisItem�v  �y  �x   � l      ��t�s � o      �r�r 0 iteminfo ItemInfo�t  �s   �  � � � l  � ��q � ��q   � 0 *log that we're processing the current item    � � � � T l o g   t h a t   w e ' r e   p r o c e s s i n g   t h e   c u r r e n t   i t e m �    I  � ��p
�p .sysoexecTEXT���     TEXT b   � � b   � � b   � �	 m   � �

 � f t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   P R O C E S S I N G  	 l  � ��o�n n   � � 1   � ��m
�m 
strq l  � ��l�k n   � � 1   � ��j
�j 
psxp o   � ��i�i 0 thisitem ThisItem�l  �k  �o  �n   m   � � �    a s   w e l l   a s   l  � ��h�g n   � � 1   � ��f
�f 
pnam o   � ��e�e 0 iteminfo ItemInfo�h  �g   �d�c
�d 
rtyp b   � � b   � � m   � ��b
�b 
TEXT m   � � �    > >   o   � ��a�a $0 breakfastlonglog BreakfastLongLog�c    l  � ��`�_�^�`  �_  �^    !  l  � ��]"#�]  " P Jcheck to make sure the item has finished moving before we start processing   # �$$ � c h e c k   t o   m a k e   s u r e   t h e   i t e m   h a s   f i n i s h e d   m o v i n g   b e f o r e   w e   s t a r t   p r o c e s s i n g! %&% r   � �'(' n   � �)*) 1   � ��\
�\ 
ptsz* o   � ��[�[ 0 iteminfo ItemInfo( o      �Z�Z 0 oldsize oldSize& +,+ I  � ��Y-�X
�Y .sysodelanull��� ��� nmbr- m   � ��W�W �X  , ./. r   � 010 n   � �232 1   � ��V
�V 
ptsz3 o   � ��U�U 0 iteminfo ItemInfo1 o      �T�T 0 newsize newSize/ 454 V  1676 k  	,88 9:9 I 	�S;�R
�S .sysoexecTEXT���     TEXT; b  	<=< m  	>> �?? � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   T h r o t t l i n g   p r o c e s s i n g   u n t i l   m o v i n g   h a s   s e t t l e d .   > >  = o  �Q�Q $0 breakfastlonglog BreakfastLongLog�R  : @A@ l �PBC�P  B   Get the file size.   C �DD &   G e t   t h e   f i l e   s i z e .A EFE r  GHG n  IJI 1  �O
�O 
ptszJ o  �N�N 0 iteminfo ItemInfoH o      �M�M 0 oldsize oldSizeF KLK I $�LM�K
�L .sysodelanull��� ��� nmbrM m   �J�J �K  L NON l %%�IPQ�I  P 8 2 Sample the size again after delay for comparison.   Q �RR d   S a m p l e   t h e   s i z e   a g a i n   a f t e r   d e l a y   f o r   c o m p a r i s o n .O S�HS r  %,TUT n  %*VWV 1  &*�G
�G 
ptszW o  %&�F�F 0 iteminfo ItemInfoU o      �E�E 0 newsize newSize�H  7 > XYX o  �D�D 0 newsize newSizeY o  �C�C 0 oldsize oldSize5 Z[Z l 22�B�A�@�B  �A  �@  [ \]\ l 22�?^_�?  ^ � zCheck if one of the added items is a folder, if it is get all the files in that folder too, and add them to our item array   _ �`` � C h e c k   i f   o n e   o f   t h e   a d d e d   i t e m s   i s   a   f o l d e r ,   i f   i t   i s   g e t   a l l   t h e   f i l e s   i n   t h a t   f o l d e r   t o o ,   a n d   a d d   t h e m   t o   o u r   i t e m   a r r a y] aba Z  2�cd�>�=c l 2;e�<�;e = 2;fgf l 27h�:�9h n  27iji 1  37�8
�8 
kindj l 23k�7�6k o  23�5�5 0 iteminfo ItemInfo�7  �6  �:  �9  g m  7:ll �mm  F o l d e r�<  �;  d k  >�nn opo I >K�4q�3
�4 .sysoexecTEXT���     TEXTq b  >Grsr m  >Att �uu � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   T h i s   i s   a   f o l d e r ,   s o   c h e c k   w h a t \ ' s   i n s i d e   > >  s o  AF�2�2 $0 breakfastlonglog BreakfastLongLog�3  p v�1v O  L�wxw k  R�yy z{z r  Rb|}| l R`~�0�/~ n  R`� m  \`�.
�. 
nmbr� n R\��� 2 X\�-
�- 
cobj� 4  RX�,�
�, 
cfol� o  VW�+�+ 0 thisitem ThisItem�0  �/  } o      �*�* 0 
itemnumber 
ItemNumber{ ��� I cv�)��(
�) .sysoexecTEXT���     TEXT� b  cr��� b  cl��� b  ch��� m  cf�� ��� � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   N u m b e r   o f   i t e m s   i n   f o l d e r ?  � o  fg�'�' 0 
itemnumber 
ItemNumber� m  hk�� ���    > >  � o  lq�&�& $0 breakfastlonglog BreakfastLongLog�(  � ��%� Y  w���$���#� k  ���� ��� r  ����� n ����� 4  ���"�
�" 
cobj� o  ���!�! 0 j  � 4  ��� �
�  
cfol� o  ���� 0 thisitem ThisItem� o      �� 0 
folderitem 
FolderItem� ��� r  ����� b  ����� o  ���� 0 
addeditems 
addedItems� l ������ c  ����� o  ���� 0 
folderitem 
FolderItem� m  ���
� 
alis�  �  � o      �� 0 
addeditems 
addedItems� ��� I �����
� .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� m  ���� ��� \ t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   A d d e d  � l ������ n  ����� 1  ���
� 
strq� l ������ n  ����� 1  ���
� 
psxp� l ������ c  ����� o  ���� 0 
folderitem 
FolderItem� m  ���
� 
alis�  �  �  �  �  �  � m  ���� ���    > >  � o  ���� $0 breakfastlonglog BreakfastLongLog�  � ��
� I ���	��
�	 .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� m  ���� ��� l t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   N o w   t h e r e   a r e  � n  ����� m  ���
� 
nmbr� n ����� 2 ���
� 
cobj� o  ���� 0 
addeditems 
addedItems� m  ���� ��� 2   i t e m s   i n   a d d e d _ i t e m s   > >  � o  ���� $0 breakfastlonglog BreakfastLongLog�  �
  �$ 0 j  � m  z{�� � o  {|�� 0 
itemnumber 
ItemNumber�#  �%  x m  LO���                                                                                  MACS   alis    r  Macintosh HD               �a��H+     �
Finder.app                                                       uFò��        ����  	                CoreServices    �b      ó3"       �   Q   P  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �1  �>  �=  b ��� l ���� ���  �   ��  � ��� l ��������  � � �check to make sure that the extension is in the allow list, and that the file hasn't been processed already (label color isn't green)   � ���
 c h e c k   t o   m a k e   s u r e   t h a t   t h e   e x t e n s i o n   i s   i n   t h e   a l l o w   l i s t ,   a n d   t h a t   t h e   f i l e   h a s n ' t   b e e n   p r o c e s s e d   a l r e a d y   ( l a b e l   c o l o r   i s n ' t   g r e e n )� ��� O  �3��� k  �2�� ��� l ��������  � . (check if the label is green for the file   � ��� P c h e c k   i f   t h e   l a b e l   i s   g r e e n   f o r   t h e   f i l e� ���� Z  �2������ > ����� c  ����� l �������� l �������� n  ����� 1  ����
�� 
labi� o  ������ 0 thisitem ThisItem��  ��  ��  ��  � m  ����
�� 
long� m  ������ � k  ��� ��� l ��������  � ) #log that we passed the color filter   � ��� F l o g   t h a t   w e   p a s s e d   t h e   c o l o r   f i l t e r� ��� I ������
�� .sysoexecTEXT���     TEXT� b  ����� m  ���� ��� � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   P A S S E D   l a b e l   c o l o r   f i l t e r   > >  � o  ������ $0 breakfastlonglog BreakfastLongLog��  � ��� l ������  � 9 3check if the file has one of our desired extensions   � ��� f c h e c k   i f   t h e   f i l e   h a s   o n e   o f   o u r   d e s i r e d   e x t e n s i o n s� ���� Z  ���� � l ���� E  l ���� o  ���� 0 extensionlist ExtensionList��  ��   l ���� n   1  	��
�� 
nmxt l 	���� o  	���� 0 iteminfo ItemInfo��  ��  ��  ��  ��  ��  � k  
		 

 l ����   - 'log that we passed the extension filter    � N l o g   t h a t   w e   p a s s e d   t h e   e x t e n s i o n   f i l t e r  I ����
�� .sysoexecTEXT���     TEXT b   m   � � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   P A S S E D   e x t e n s i o n   f i l t e r   > >   o  ���� $0 breakfastlonglog BreakfastLongLog��    l ��������  ��  ��    l ����   r lneed some way to only invoke HandbrakeCLI if the file is in the extension list, otherwise the script crashes    � � n e e d   s o m e   w a y   t o   o n l y   i n v o k e   H a n d b r a k e C L I   i f   t h e   f i l e   i s   i n   t h e   e x t e n s i o n   l i s t ,   o t h e r w i s e   t h e   s c r i p t   c r a s h e s  r  "  m   ����   o      ���� 0 doencode DoEncode !"! l ##��������  ��  ��  " #$# l ##��%&��  % % generate input path, and log it   & �'' > g e n e r a t e   i n p u t   p a t h ,   a n d   l o g   i t$ ()( r  #.*+* l #,,����, n  #,-.- 1  (,��
�� 
strq. l #(/����/ n  #(010 1  $(��
�� 
psxp1 o  #$���� 0 thisitem ThisItem��  ��  ��  ��  + o      ���� 0 
sourcename  ) 232 I /B��4��
�� .sysoexecTEXT���     TEXT4 b  />565 b  /8787 b  /49:9 m  /2;; �<< j t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   S o u r c e   f i l e :  : o  23���� 0 
sourcename  8 m  47== �>>    > >  6 o  8=���� $0 breakfastlonglog BreakfastLongLog��  3 ?@? I CV��A��
�� .sysoexecTEXT���     TEXTA b  CRBCB b  CLDED b  CHFGF m  CFHH �II z t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   F i l e   p a s s e d   f i l t e r s ,  G o  FG���� 0 
sourcename  E m  HKJJ �KK (   i s   b e i n g   q u e u e d   > >  C o  LQ���� &0 breakfastshortlog BreakfastShortLog��  @ LML l WW��������  ��  ��  M NON l WW��PQ��  P � �generate output path by removing the extension from the input filename, add the prefix of the directory to put it in, and adding m4v at the end   Q �RR g e n e r a t e   o u t p u t   p a t h   b y   r e m o v i n g   t h e   e x t e n s i o n   f r o m   t h e   i n p u t   f i l e n a m e ,   a d d   t h e   p r e f i x   o f   t h e   d i r e c t o r y   t o   p u t   i t   i n ,   a n d   a d d i n g   m 4 v   a t   t h e   e n dO STS l WW��UV��  U 8 2 generate a log output path similarly (txt at end)   V �WW d   g e n e r a t e   a   l o g   o u t p u t   p a t h   s i m i l a r l y   ( t x t   a t   e n d )T XYX r  WjZ[Z c  Wh\]\ l Wd^����^ l Wd_����_ n  Wd`a` 1  `d��
�� 
rvsea n  W`bcb 2  \`��
�� 
cha c l W\d����d n  W\efe 1  X\��
�� 
pnamf l WXg����g o  WX���� 0 iteminfo ItemInfo��  ��  ��  ��  ��  ��  ��  ��  ] m  dg��
�� 
TEXT[ o      ���� 0 outfilename OutFilenameY hih r  k~jkj l k|l����l I k|����m
�� .sysooffslong    ��� null��  m ��no
�� 
psofn m  orpp �qq  .o ��r��
�� 
psinr o  uv���� 0 outfilename OutFilename��  ��  ��  k o      ���� 0 x  i sts r  �uvu l �w����w n  �xyx 7 ����z{
�� 
ctxtz l ��|����| [  ��}~} o  ������ 0 x  ~ m  ������ ��  ��  { m  ��������y o  ����� 0 outfilename OutFilename��  ��  v o      ���� 0 outfilename OutFilenamet � r  ����� c  ����� l �������� l �������� n  ����� 1  ����
�� 
rvse� n  ����� 2  ����
�� 
cha � o  ������ 0 outfilename OutFilename��  ��  ��  ��  � m  ����
�� 
TEXT� o      ���� 0 outfilename OutFilename� ��� r  ����� l �������� n  ����� 1  ����
�� 
strq� l �������� b  ����� b  ����� l �������� o  ������ 0 	outfolder 	OutFolder��  ��  � l �������� o  ������ 0 outfilename OutFilename��  ��  � m  ���� ���  . t x t��  ��  ��  ��  � o      ���� 0 
outlogname 
OutLogname� ��� r  ����� l �������� n  ����� 1  ����
�� 
strq� l �������� b  ����� b  ����� l �������� o  ������ 0 	outfolder 	OutFolder��  ��  � l �����~� o  ���}�} 0 outfilename OutFilename�  �~  � m  ���� ���  . m 4 v��  ��  ��  ��  � o      �|�| 0 
outputpath 
OutputPath� ��� l ���{�z�y�{  �z  �y  � ��� l ���x���x  � 4 .log the encode output and the log output paths   � ��� \ l o g   t h e   e n c o d e   o u t p u t   a n d   t h e   l o g   o u t p u t   p a t h s� ��� I ���w��v
�w .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� m  ���� ��� r t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   E n c o d e   g o i n g   t o :  � o  ���u�u 0 
outputpath 
OutputPath� m  ���� ���    > >  � o  ���t�t $0 breakfastlonglog BreakfastLongLog�v  � ��� I ���s��r
�s .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� m  ���� ��� l t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   L o g   g o i n g   t o :  � o  ���q�q 0 
outlogname 
OutLogname� m  ���� ���    > >  � o  ���p�p $0 breakfastlonglog BreakfastLongLog�r  � ��� l ���o�n�m�o  �n  �m  � ��� l ���l���l  � ` Zcolor the file we're about to convert green so the script recognizes it as processed later   � ��� � c o l o r   t h e   f i l e   w e ' r e   a b o u t   t o   c o n v e r t   g r e e n   s o   t h e   s c r i p t   r e c o g n i z e s   i t   a s   p r o c e s s e d   l a t e r� ��k� O  �
��� r  �	��� m  ���j�j � n      ��� 1  �i
�i 
labi� 4  ��h�
�h 
cobj� o  �g�g 0 thisitem ThisItem� m  �����                                                                                  MACS   alis    r  Macintosh HD               �a��H+     �
Finder.app                                                       uFò��        ����  	                CoreServices    �b      ó3"       �   Q   P  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �k  ��    k  �� ��� l �f���f  � c ]we didn't pass the extension filter, signal the encode code to be blocked and log the failure   � ��� � w e   d i d n ' t   p a s s   t h e   e x t e n s i o n   f i l t e r ,   s i g n a l   t h e   e n c o d e   c o d e   t o   b e   b l o c k e d   a n d   l o g   t h e   f a i l u r e� ��� r  ��� m  �e�e  � o      �d�d 0 doencode DoEncode� ��c� I �b��a
�b .sysoexecTEXT���     TEXT� b  ��� m  �� ��� � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   F A I L E D   e x t e n s i o n   f i l t e r   > >  � o  �`�` $0 breakfastlonglog BreakfastLongLog�a  �c  ��  ��  � k  !2�� ��� l !!�_���_  � � �we didn't pass the label filter (the file was already processed or someone is too organized), signal the encode code to be blocked and log the failure   � ���, w e   d i d n ' t   p a s s   t h e   l a b e l   f i l t e r   ( t h e   f i l e   w a s   a l r e a d y   p r o c e s s e d   o r   s o m e o n e   i s   t o o   o r g a n i z e d ) ,   s i g n a l   t h e   e n c o d e   c o d e   t o   b e   b l o c k e d   a n d   l o g   t h e   f a i l u r e� ��� r  !$��� m  !"�^�^  � o      �]�] 0 doencode DoEncode� ��\� I %2�[��Z
�[ .sysoexecTEXT���     TEXT� b  %.��� m  %(�� ��� | t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   F A I L E D   l a b e l   c o l o r   > >  � o  (-�Y�Y $0 breakfastlonglog BreakfastLongLog�Z  �\  ��  � m  �����                                                                                  MACS   alis    r  Macintosh HD               �a��H+     �
Finder.app                                                       uFò��        ����  	                CoreServices    �b      ó3"       �   Q   P  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� l 44�X�W�V�X  �W  �V  � � � l 44�U�U   ' !check if we're supposed to encode    � B c h e c k   i f   w e ' r e   s u p p o s e d   t o   e n c o d e   Z  4��T�S =  47	 o  45�R�R 0 doencode DoEncode	 m  56�Q�Q  k  :�

  l ::�P�P   � �dump parsed filenames to queue.txt, I tried writing CSV for easier editing but this doesn't work because CSV parses the , in encoding options as a separate field    �B d u m p   p a r s e d   f i l e n a m e s   t o   q u e u e . t x t ,   I   t r i e d   w r i t i n g   C S V   f o r   e a s i e r   e d i t i n g   b u t   t h i s   d o e s n ' t   w o r k   b e c a u s e   C S V   p a r s e s   t h e   ,   i n   e n c o d i n g   o p t i o n s   a s   a   s e p a r a t e   f i e l d  I :g�O�N
�O .sysoexecTEXT���     TEXT b  :c b  :] b  :Y b  :U b  :Q b  :K b  :G  b  :C!"! b  :?#$# m  :=%% �&& 
 e c h o  $ o  =>�M�M 0 
sourcename  " m  ?B'' �((  \ ;  o  CF�L�L 0 
outputpath 
OutputPath m  GJ)) �**  \ ; o  KP�K�K "0 encodingoptions EncodingOptions m  QT++ �,,  \ ; o  UX�J�J 0 
outlogname 
OutLogname m  Y\-- �..    > >   o  ]b�I�I 0 	queuepath 	QueuePath�N   /0/ l hh�H�G�F�H  �G  �F  0 121 l hh�E34�E  3 s mset isHandbrakeRunning to do shell script "ps ax | grep HandBrakeCLI | grep -v grep | wc -l | cut -d ' ' -f8"   4 �55 � s e t   i s H a n d b r a k e R u n n i n g   t o   d o   s h e l l   s c r i p t   " p s   a x   |   g r e p   H a n d B r a k e C L I   |   g r e p   - v   g r e p   |   w c   - l   |   c u t   - d   '   '   - f 8 "2 676 l hh�D89�D  8 N H isHandbrakeRunning returns the number of HandBrakeCLI processes running   9 �:: �   i s H a n d b r a k e R u n n i n g   r e t u r n s   t h e   n u m b e r   o f   H a n d B r a k e C L I   p r o c e s s e s   r u n n i n g7 ;<; l hh�C�B�A�C  �B  �A  < =>= l hh�@?@�@  ? S M Try first with the AppPath, then let the script find the program on its own.   @ �AA �   T r y   f i r s t   w i t h   t h e   A p p P a t h ,   t h e n   l e t   t h e   s c r i p t   f i n d   t h e   p r o g r a m   o n   i t s   o w n .> B�?B Q  h�CDEC Z  k�FG�>HF > kvIJI n  ktKLK 1  pt�=
�= 
prunL o  kp�<�< 0 apppath AppPathJ m  tu�;
�; boovtrueG k  y�MM NON l yy�:PQ�:  P W Qwe're not currently encoding, log it, give the encoding script a kick in the arse   Q �RR � w e ' r e   n o t   c u r r e n t l y   e n c o d i n g ,   l o g   i t ,   g i v e   t h e   e n c o d i n g   s c r i p t   a   k i c k   i n   t h e   a r s eO STS I y��9U�8
�9 .sysoexecTEXT���     TEXTU b  y�VWV m  y|XX �YY � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   B r e a k f a s t   N O T   r e p o r t i n g   r u n n i n g ,   s o   a s k i n g   e n c o d e r   t o   s t a r t . . .   > >  W o  |��7�7 $0 breakfastlonglog BreakfastLongLog�8  T Z[Z l ���6�5�4�6  �5  �4  [ \]\ l ���3^_�3  ^   Send it to Breakfast   _ �`` *   S e n d   i t   t o   B r e a k f a s t] a�2a O  ��bcb k  ��dd efe I ���1�0�/
�1 .aevtoappnull  �   � ****�0  �/  f g�.g I ���-�,�+
�- .miscactvnull��� ��� obj �,  �+  �.  c 4  ���*h
�* 
capph o  ���)�) 0 apppath AppPath�2  �>  H k  ��ii jkj l ���(lm�(  l ( "already encoding, quietly log this   m �nn D a l r e a d y   e n c o d i n g ,   q u i e t l y   l o g   t h i sk o�'o I ���&p�%
�& .sysoexecTEXT���     TEXTp b  ��qrq m  ��ss �tt � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   B r e a k f a s t   i s   r e p o r t i n g   r u n n i n g ,   s o   n o t   a s k i n g   e n c o d e r   t o   s t a r t . . .   > >  r o  ���$�$ $0 breakfastlonglog BreakfastLongLog�%  �'  D R      �#�"�!
�# .ascrerr ****      � ****�"  �!  E Z  ��uv� wu > ��xyx n  ��z{z 1  ���
� 
prun{ m  ��|| �}}  B r e a k f a s ty m  ���
� boovtruev k  ��~~ � l ������  � W Qwe're not currently encoding, log it, give the encoding script a kick in the arse   � ��� � w e ' r e   n o t   c u r r e n t l y   e n c o d i n g ,   l o g   i t ,   g i v e   t h e   e n c o d i n g   s c r i p t   a   k i c k   i n   t h e   a r s e� ��� I �����
� .sysoexecTEXT���     TEXT� b  ����� m  ���� ��� � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   B r e a k f a s t   N O T   r e p o r t i n g   r u n n i n g ,   s o   a s k i n g   e n c o d e r   t o   s t a r t . . .   > >  � o  ���� $0 breakfastlonglog BreakfastLongLog�  � ��� l ������  �  �  � ��� l ������  �   Send it to Breakfast   � ��� *   S e n d   i t   t o   B r e a k f a s t� ��� O  ����� k  ���� ��� I �����
� .aevtoappnull  �   � ****�  �  � ��� I �����
� .miscactvnull��� ��� obj �  �  �  � m  ����                                                                                      @  alis    �  Macintosh HD               �a��H+  �j�Breakfast.app                                                  ���؀j        ����  	                Release     �b      ��ƺ    �j��j��j��k +? 
�g  z�  NMacintosh HD:Users:mike:Program:Backups:Breakfast2:build:Release:Breakfast.app    B r e a k f a s t . a p p    M a c i n t o s h   H D  AUsers/mike/Program/Backups/Breakfast2/build/Release/Breakfast.app   /    ��  �  �   w k  ���� ��� l ������  � ( "already encoding, quietly log this   � ��� D a l r e a d y   e n c o d i n g ,   q u i e t l y   l o g   t h i s� ��� I �����

� .sysoexecTEXT���     TEXT� b  ����� m  ���� ��� � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   B r e a k f a s t   i s   r e p o r t i n g   r u n n i n g ,   s o   n o t   a s k i n g   e n c o d e r   t o   s t a r t . . .   > >  � o  ���	�	 $0 breakfastlonglog BreakfastLongLog�
  �  �?  �T  �S   ��� l ������  �  �  � ��� l ������  � I Cnote for the loop that we passed through index 1 of the added files   � ��� � n o t e   f o r   t h e   l o o p   t h a t   w e   p a s s e d   t h r o u g h   i n d e x   1   o f   t h e   a d d e d   f i l e s� ��� r  ����� [  ����� o  ���� 0 i  � m  ���� � o      �� 0 i  �   � ?   � ���� o   � �� �  0 i  � l  � ������� l  � ������� n   � ���� m   � ���
�� 
nmbr� n   � ���� 2  � ���
�� 
cobj� o   � ����� 0 
addeditems 
addedItems��  ��  ��  ��   � ���� I �����
�� .sysoexecTEXT���     TEXT� b  ��� m  �� ��� � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   E x i t e d   r e p e a t   l o o p ,   a l l   f i l e s   s h o u l d   b e   h a n d l e d   > >  � o  ���� $0 breakfastlonglog BreakfastLongLog��  ��   � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��       ����������������������������  � �������������������������� &0 breakfastshortlog BreakfastShortLog�� $0 breakfastlonglog BreakfastLongLog�� 0 extensionlist ExtensionList��  0 calledbyscript CalledByScript�� 0 	outfolder 	OutFolder�� 0 watchfolder WatchFolder�� 0 
addeditems 
addedItems�� "0 encodingoptions EncodingOptions�� 0 	queuepath 	QueuePath�� 0 resourcepath resourcePath�� 0 apppath AppPath
�� .facofgetnull���     alis
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng� �� .��������
�� .facofgetnull���     alis�� 0 
thisfolder 
thisFolder�� ������
�� 
flst�� 0 
addeditems 
addedItems��  � �������������������������������������� 0 
thisfolder 
thisFolder�� 0 
addeditems 
addedItems�� 0 extensiontemp ExtensionTemp�� 0 olddelimiters oldDelimiters�� 0 i  �� 0 thisitem ThisItem�� 0 iteminfo ItemInfo�� 0 oldsize oldSize�� 0 newsize newSize�� 0 
itemnumber 
ItemNumber�� 0 j  �� 0 
folderitem 
FolderItem�� 0 doencode DoEncode�� 0 
sourcename  �� 0 outfilename OutFilename�� 0 x  �� 0 
outlogname 
OutLogname�� 0 
outputpath 
OutputPath� W 9���� H�� P X i u�� � � � � � ����� ���
��������������>��lt��������������������;=HJ������p����������������%')+-��X������s����|����
�� 
ascr
�� 
txdl
�� .sysoexecTEXT���     TEXT
�� 
citm
�� 
cobj
�� 
nmbr
�� .sysonfo4asfe        file
�� 
psxp
�� 
strq
�� 
pnam
�� 
rtyp
�� 
TEXT
�� 
ptsz
�� .sysodelanull��� ��� nmbr
�� 
kind
�� 
cfol
�� 
alis
�� 
labi
�� 
long�� 
�� 
nmxt
�� 
cha 
�� 
rvse
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
ctxt
�� 
prun
�� 
capp
�� .aevtoappnull  �   � ****
�� .miscactvnull��� ��� obj ��  ��  ���kv��,FO�j Ec   O�j Ec  O�j Ec  
O�j E�O��,E�O���,FO��-EQc  O���,FO�j �%Ec  O�j Ec  O�j Ec  O�j O��a -a ,%a %b   %j OkE�Odh��a -a ,�a �/E�O�j E�Oa �a ,a ,%a %�a ,%a a a %b  %l O�a ,E�Omj O�a ,E�O /h��a b  %j O�a ,E�Omj O�a ,E�[OY��O�a ,a    �a !b  %j Oa " �*a #�/a -a ,E�Oa $�%a %%b  %j O ak�kh 
*a #�/a �/E�O��a &&%E�Oa '�a &&a ,a ,%a (%b  %j Oa )�a -a ,%a *%b  %j [OY��UY hOa "O�a +,a ,&a -.a .b  %j Ob  �a /, �a 0b  %j OkE�O�a ,a ,E�Oa 1�%a 2%b  %j Oa 3�%a 4%b   %j O�a ,a 5-a 6,a &E�O*a 7a 8a 9�a : ;E�O�[a <\[Z�k\Zi2E�O�a 5-a 6,a &E�Ob  �%a =%a ,E^ Ob  �%a >%a ,E^ Oa ?] %a @%b  %j Oa A] %a B%b  %j Oa " a -*a �/a +,FUY jE�Oa Cb  %j Y jE�Oa Db  %j UO�k  �a E�%a F%] %a G%b  %a H%] %a I%b  %j O Jb  
a J,e ,a Kb  %j O*a Lb  
/ *j MO*j NUY a Ob  %j W CX P Qa Ra J,e %a Sb  %j Oa T *j MO*j NUY a Ub  %j Y hO�kE�[OY��Oa Vb  %j W X P Qh ascr  ��ޭ