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
msng $  & ' & l     ��������  ��  ��   '  ( ) ( i   ! $ * + * I     �� , -
�� .facofgetnull���     alis , o      ���� 0 
thisfolder 
thisFolder - �� .��
�� 
flst . o      ���� 0 
addeditems 
addedItems��   + k    � / /  0 1 0 r      2 3 2 J      4 4  5�� 5 m      6 6 � 7 7  ��   3 n      8 9 8 1    ��
�� 
txdl 9 1    ��
�� 
ascr 1  : ; : l   �� < =��   < E ? Get our properties from the user defaults. Get the logs first.    = � > > ~   G e t   o u r   p r o p e r t i e s   f r o m   t h e   u s e r   d e f a u l t s .   G e t   t h e   l o g s   f i r s t . ;  ? @ ? r     A B A l    C���� C I   �� D��
�� .sysoexecTEXT���     TEXT D m    	 E E � F F h d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   B r e a k f a s t S h o r t L o g��  ��  ��   B o      ���� &0 breakfastshortlog BreakfastShortLog @  G H G r     I J I l    K���� K I   �� L��
�� .sysoexecTEXT���     TEXT L m     M M � N N f d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   B r e a k f a s t L o n g L o g��  ��  ��   J o      ���� $0 breakfastlonglog BreakfastLongLog H  O P O r     + Q R Q l    % S���� S I    %�� T��
�� .sysoexecTEXT���     TEXT T m     ! U U � V V T d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   A p p P a t h��  ��  ��   R o      ���� 0 apppath AppPath P  W X W l  , ,��������  ��  ��   X  Y Z Y l  , ,�� [ \��   [ N H First we go after the extensions, because they're the most complicated.    \ � ] ] �   F i r s t   w e   g o   a f t e r   t h e   e x t e n s i o n s ,   b e c a u s e   t h e y ' r e   t h e   m o s t   c o m p l i c a t e d . Z  ^ _ ^ r   , 3 ` a ` l  , 1 b���� b I  , 1�� c��
�� .sysoexecTEXT���     TEXT c m   , - d d � e e ` d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   E x t e n s i o n L i s t��  ��  ��   a o      ���� 0 extensiontemp ExtensionTemp _  f g f r   4 9 h i h n  4 7 j k j 1   5 7��
�� 
txdl k 1   4 5��
�� 
ascr i o      ���� 0 olddelimiters oldDelimiters g  l m l r   : ? n o n m   : ; p p � q q  ; o n      r s r 1   < >��
�� 
txdl s 1   ; <��
�� 
ascr m  t u t s   @ J v w v n   @ C x y x 2  A C��
�� 
citm y o   @ A���� 0 extensiontemp ExtensionTemp w o      ���� 0 extensionlist ExtensionList u  z { z r   K P | } | o   K L���� 0 olddelimiters oldDelimiters } n      ~  ~ 1   M O��
�� 
txdl  1   L M��
�� 
ascr {  � � � l  Q Q�� � ���   �   Log Extension List    � � � � &   L o g   E x t e n s i o n   L i s t �  � � � l  Q Q�� � ���   � � � do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time We will be looking for EXTENSIONS: " & (item 1 of ExtensionList) & " as well as " & (item 2 of ExtensionList) & " >> " & BreakfastLongLog    � � � ��   d o   s h e l l   s c r i p t   " t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   W e   w i l l   b e   l o o k i n g   f o r   E X T E N S I O N S :   "   &   ( i t e m   1   o f   E x t e n s i o n L i s t )   &   "   a s   w e l l   a s   "   &   ( i t e m   2   o f   E x t e n s i o n L i s t )   &   "   > >   "   &   B r e a k f a s t L o n g L o g �  � � � l  Q Q��������  ��  ��   �  � � � l  Q Q�� � ���   � ( " Now the rest of the properties...    � � � � D   N o w   t h e   r e s t   o f   t h e   p r o p e r t i e s . . . �  � � � r   Q ^ � � � b   Q X � � � l  Q V ����� � I  Q V�� ���
�� .sysoexecTEXT���     TEXT � m   Q R � � � � � X d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   O u t F o l d e r��  ��  ��   � m   V W � � � � �  / � o      ���� 0 	outfolder 	OutFolder �  � � � r   _ j � � � l  _ d ����� � I  _ d�� ���
�� .sysoexecTEXT���     TEXT � m   _ ` � � � � � d d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   E n c o d i n g O p t i o n s��  ��  ��   � o      ���� "0 encodingoptions EncodingOptions �  � � � r   k v � � � l  k p ����� � I  k p�� ���
�� .sysoexecTEXT���     TEXT � m   k l � � � � � X d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   Q u e u e P a t h��  ��  ��   � o      ���� 0 	queuepath 	QueuePath �  � � � l  w w��������  ��  ��   �  � � � l  w w�� � ���   � Q K Now we set our own default to let the app know we want it to do the deal.     � � � � �   N o w   w e   s e t   o u r   o w n   d e f a u l t   t o   l e t   t h e   a p p   k n o w   w e   w a n t   i t   t o   d o   t h e   d e a l .   �  � � � I  w |�� ���
�� .sysoexecTEXT���     TEXT � m   w x � � � � � � d e f a u l t s   w r i t e   c o m . B r e a k f a s t . e n g i n e   C a l l e d B y S c r i p t   - b o o l e a n   ' y e s '��   �  � � � l  } }��������  ��  ��   �  � � � l  } }��������  ��  ��   �  ��� � Q   }� � ��� � k   �� � �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 6 0log that an event occured to trigger this script    � � � � ` l o g   t h a t   a n   e v e n t   o c c u r e d   t o   t r i g g e r   t h i s   s c r i p t �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � P t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   � l  � � ����� � n   � � � � � m   � ���
�� 
nmbr � n   � � � � � 2  � ���
�� 
cobj � o   � ����� 0 
addeditems 
addedItems��  ��   � m   � � � � � � �     i t e m s   a d d e d   > >   � o   � ����� &0 breakfastshortlog BreakfastShortLog��   �  � � � l  � ��� � ���   � 8 2iterate through all the files added to this folder    � � � � d i t e r a t e   t h r o u g h   a l l   t h e   f i l e s   a d d e d   t o   t h i s   f o l d e r �  � � � r   � � � � � m   � �����  � o      ���� 0 i   �  � � � W   �� � � � k   �� � �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � o   � ����� 0 i   � o   � ����� 0 
addeditems 
addedItems � o      ���� 0 thisitem ThisItem �  � � � r   � � � � � l  � � ����� � I  � ��� ���
�� .sysonfo4asfe        file � o   � ��� 0 thisitem ThisItem��  ��  ��   � l      ��~�} � o      �|�| 0 iteminfo ItemInfo�~  �}   �  � � � l  � ��{ � ��{   � 0 *log that we're processing the current item    � � � � T l o g   t h a t   w e ' r e   p r o c e s s i n g   t h e   c u r r e n t   i t e m �  � � � I  � ��z � �
�z .sysoexecTEXT���     TEXT � b   � � �  � b   � � b   � � m   � � � f t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   P R O C E S S I N G   l  � ��y�x n   � �	 1   � ��w
�w 
strq	 l  � �
�v�u
 n   � � 1   � ��t
�t 
psxp o   � ��s�s 0 thisitem ThisItem�v  �u  �y  �x   m   � � �    a s   w e l l   a s    l  � ��r�q n   � � 1   � ��p
�p 
pnam o   � ��o�o 0 iteminfo ItemInfo�r  �q   � �n�m
�n 
rtyp b   � � b   � � m   � ��l
�l 
TEXT m   � � �    > >   o   � ��k�k $0 breakfastlonglog BreakfastLongLog�m   �  l  � ��j�i�h�j  �i  �h    l  � ��g�g   P Jcheck to make sure the item has finished moving before we start processing    � � c h e c k   t o   m a k e   s u r e   t h e   i t e m   h a s   f i n i s h e d   m o v i n g   b e f o r e   w e   s t a r t   p r o c e s s i n g  !  r   � �"#" n   � �$%$ 1   � ��f
�f 
ptsz% o   � ��e�e 0 iteminfo ItemInfo# o      �d�d 0 oldsize oldSize! &'& I  � ��c(�b
�c .sysodelanull��� ��� nmbr( m   � ��a�a �b  ' )*) r   � +,+ n   � �-.- 1   � ��`
�` 
ptsz. o   � ��_�_ 0 iteminfo ItemInfo, o      �^�^ 0 newsize newSize* /0/ V  1121 k  	,33 454 I 	�]6�\
�] .sysoexecTEXT���     TEXT6 b  	787 m  	99 �:: � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   T h r o t t l i n g   p r o c e s s i n g   u n t i l   m o v i n g   h a s   s e t t l e d .   > >  8 o  �[�[ $0 breakfastlonglog BreakfastLongLog�\  5 ;<; l �Z=>�Z  =   Get the file size.   > �?? &   G e t   t h e   f i l e   s i z e .< @A@ r  BCB n  DED 1  �Y
�Y 
ptszE o  �X�X 0 iteminfo ItemInfoC o      �W�W 0 oldsize oldSizeA FGF I $�VH�U
�V .sysodelanull��� ��� nmbrH m   �T�T �U  G IJI l %%�SKL�S  K 8 2 Sample the size again after delay for comparison.   L �MM d   S a m p l e   t h e   s i z e   a g a i n   a f t e r   d e l a y   f o r   c o m p a r i s o n .J N�RN r  %,OPO n  %*QRQ 1  &*�Q
�Q 
ptszR o  %&�P�P 0 iteminfo ItemInfoP o      �O�O 0 newsize newSize�R  2 > STS o  �N�N 0 newsize newSizeT o  �M�M 0 oldsize oldSize0 UVU l 22�L�K�J�L  �K  �J  V WXW l 22�IYZ�I  Y � zCheck if one of the added items is a folder, if it is get all the files in that folder too, and add them to our item array   Z �[[ � C h e c k   i f   o n e   o f   t h e   a d d e d   i t e m s   i s   a   f o l d e r ,   i f   i t   i s   g e t   a l l   t h e   f i l e s   i n   t h a t   f o l d e r   t o o ,   a n d   a d d   t h e m   t o   o u r   i t e m   a r r a yX \]\ Z  2�^_�H�G^ l 2;`�F�E` = 2;aba l 27c�D�Cc n  27ded 1  37�B
�B 
kinde l 23f�A�@f o  23�?�? 0 iteminfo ItemInfo�A  �@  �D  �C  b m  7:gg �hh  F o l d e r�F  �E  _ k  >�ii jkj I >K�>l�=
�> .sysoexecTEXT���     TEXTl b  >Gmnm m  >Aoo �pp � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   T h i s   i s   a   f o l d e r ,   s o   c h e c k   w h a t \ ' s   i n s i d e   > >  n o  AF�<�< $0 breakfastlonglog BreakfastLongLog�=  k q�;q O  L�rsr k  R�tt uvu r  Rbwxw l R`y�:�9y n  R`z{z m  \`�8
�8 
nmbr{ n R\|}| 2 X\�7
�7 
cobj} 4  RX�6~
�6 
cfol~ o  VW�5�5 0 thisitem ThisItem�:  �9  x o      �4�4 0 
itemnumber 
ItemNumberv � I cv�3��2
�3 .sysoexecTEXT���     TEXT� b  cr��� b  cl��� b  ch��� m  cf�� ��� � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   N u m b e r   o f   i t e m s   i n   f o l d e r ?  � o  fg�1�1 0 
itemnumber 
ItemNumber� m  hk�� ���    > >  � o  lq�0�0 $0 breakfastlonglog BreakfastLongLog�2  � ��/� Y  w���.���-� k  ���� ��� r  ����� n ����� 4  ���,�
�, 
cobj� o  ���+�+ 0 j  � 4  ���*�
�* 
cfol� o  ���)�) 0 thisitem ThisItem� o      �(�( 0 
folderitem 
FolderItem� ��� r  ����� b  ����� o  ���'�' 0 
addeditems 
addedItems� l ����&�%� c  ����� o  ���$�$ 0 
folderitem 
FolderItem� m  ���#
�# 
alis�&  �%  � o      �"�" 0 
addeditems 
addedItems� ��� I ���!�� 
�! .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� m  ���� ��� \ t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   A d d e d  � l ������ n  ����� 1  ���
� 
strq� l ������ n  ����� 1  ���
� 
psxp� l ������ c  ����� o  ���� 0 
folderitem 
FolderItem� m  ���
� 
alis�  �  �  �  �  �  � m  ���� ���    > >  � o  ���� $0 breakfastlonglog BreakfastLongLog�   � ��� I �����
� .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� m  ���� ��� l t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   N o w   t h e r e   a r e  � n  ����� m  ���
� 
nmbr� n ����� 2 ���
� 
cobj� o  ���� 0 
addeditems 
addedItems� m  ���� ��� 2   i t e m s   i n   a d d e d _ i t e m s   > >  � o  ���� $0 breakfastlonglog BreakfastLongLog�  �  �. 0 j  � m  z{�� � o  {|�� 0 
itemnumber 
ItemNumber�-  �/  s m  LO���                                                                                  MACS   alis    r  Macintosh HD               �a��H+     �
Finder.app                                                       uFò��        ����  	                CoreServices    �b      ó3"       �   Q   P  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �;  �H  �G  ] ��� l ����
�	�  �
  �	  � ��� l ������  � � �check to make sure that the extension is in the allow list, and that the file hasn't been processed already (label color isn't green)   � ���
 c h e c k   t o   m a k e   s u r e   t h a t   t h e   e x t e n s i o n   i s   i n   t h e   a l l o w   l i s t ,   a n d   t h a t   t h e   f i l e   h a s n ' t   b e e n   p r o c e s s e d   a l r e a d y   ( l a b e l   c o l o r   i s n ' t   g r e e n )� ��� O  �3��� k  �2�� ��� l ������  � . (check if the label is green for the file   � ��� P c h e c k   i f   t h e   l a b e l   i s   g r e e n   f o r   t h e   f i l e� ��� Z  �2����� > ����� c  ����� l ������ l ������ n  ����� 1  ��� 
�  
labi� o  ������ 0 thisitem ThisItem�  �  �  �  � m  ����
�� 
long� m  ������ � k  ��� ��� l ��������  � ) #log that we passed the color filter   � ��� F l o g   t h a t   w e   p a s s e d   t h e   c o l o r   f i l t e r� ��� I ������
�� .sysoexecTEXT���     TEXT� b  ����� m  ���� ��� � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   P A S S E D   l a b e l   c o l o r   f i l t e r   > >  � o  ������ $0 breakfastlonglog BreakfastLongLog��  � ��� l ������  � 9 3check if the file has one of our desired extensions   � ��� f c h e c k   i f   t h e   f i l e   h a s   o n e   o f   o u r   d e s i r e d   e x t e n s i o n s� ���� Z  ������ l ������ E ��� l ������ o  ���� 0 extensionlist ExtensionList��  ��  � l  ����  n   1  	��
�� 
nmxt l 	���� o  	���� 0 iteminfo ItemInfo��  ��  ��  ��  ��  ��  � k  
  l ����   - 'log that we passed the extension filter    �		 N l o g   t h a t   w e   p a s s e d   t h e   e x t e n s i o n   f i l t e r 

 I ����
�� .sysoexecTEXT���     TEXT b   m   � � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   P A S S E D   e x t e n s i o n   f i l t e r   > >   o  ���� $0 breakfastlonglog BreakfastLongLog��    l ��������  ��  ��    l ����   r lneed some way to only invoke HandbrakeCLI if the file is in the extension list, otherwise the script crashes    � � n e e d   s o m e   w a y   t o   o n l y   i n v o k e   H a n d b r a k e C L I   i f   t h e   f i l e   i s   i n   t h e   e x t e n s i o n   l i s t ,   o t h e r w i s e   t h e   s c r i p t   c r a s h e s  r  " m   ����  o      ���� 0 doencode DoEncode  l ##��������  ��  ��    l ##�� !��    % generate input path, and log it   ! �"" > g e n e r a t e   i n p u t   p a t h ,   a n d   l o g   i t #$# r  #.%&% l #,'����' n  #,()( 1  (,��
�� 
strq) l #(*����* n  #(+,+ 1  $(��
�� 
psxp, o  #$���� 0 thisitem ThisItem��  ��  ��  ��  & o      ���� 0 
sourcename  $ -.- I /B��/��
�� .sysoexecTEXT���     TEXT/ b  />010 b  /8232 b  /4454 m  /266 �77 j t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   S o u r c e   f i l e :  5 o  23���� 0 
sourcename  3 m  4788 �99    > >  1 o  8=���� $0 breakfastlonglog BreakfastLongLog��  . :;: I CV��<��
�� .sysoexecTEXT���     TEXT< b  CR=>= b  CL?@? b  CHABA m  CFCC �DD z t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   F i l e   p a s s e d   f i l t e r s ,  B o  FG���� 0 
sourcename  @ m  HKEE �FF (   i s   b e i n g   q u e u e d   > >  > o  LQ���� &0 breakfastshortlog BreakfastShortLog��  ; GHG l WW��������  ��  ��  H IJI l WW��KL��  K � �generate output path by removing the extension from the input filename, add the prefix of the directory to put it in, and adding m4v at the end   L �MM g e n e r a t e   o u t p u t   p a t h   b y   r e m o v i n g   t h e   e x t e n s i o n   f r o m   t h e   i n p u t   f i l e n a m e ,   a d d   t h e   p r e f i x   o f   t h e   d i r e c t o r y   t o   p u t   i t   i n ,   a n d   a d d i n g   m 4 v   a t   t h e   e n dJ NON l WW��PQ��  P 8 2 generate a log output path similarly (txt at end)   Q �RR d   g e n e r a t e   a   l o g   o u t p u t   p a t h   s i m i l a r l y   ( t x t   a t   e n d )O STS r  WjUVU c  WhWXW l WdY����Y l WdZ����Z n  Wd[\[ 1  `d��
�� 
rvse\ n  W`]^] 2  \`��
�� 
cha ^ l W\_����_ n  W\`a` 1  X\��
�� 
pnama l WXb����b o  WX���� 0 iteminfo ItemInfo��  ��  ��  ��  ��  ��  ��  ��  X m  dg��
�� 
TEXTV o      ���� 0 outfilename OutFilenameT cdc r  k~efe l k|g����g I k|����h
�� .sysooffslong    ��� null��  h ��ij
�� 
psofi m  orkk �ll  .j ��m��
�� 
psinm o  uv���� 0 outfilename OutFilename��  ��  ��  f o      ���� 0 x  d non r  �pqp l �r����r n  �sts 7 ����uv
�� 
ctxtu l ��w����w [  ��xyx o  ������ 0 x  y m  ������ ��  ��  v m  ��������t o  ����� 0 outfilename OutFilename��  ��  q o      ���� 0 outfilename OutFilenameo z{z r  ��|}| c  ��~~ l �������� l �������� n  ����� 1  ����
�� 
rvse� n  ����� 2  ����
�� 
cha � o  ������ 0 outfilename OutFilename��  ��  ��  ��   m  ����
�� 
TEXT} o      ���� 0 outfilename OutFilename{ ��� r  ����� l �������� n  ����� 1  ����
�� 
strq� l �������� b  ����� b  ����� l �������� o  ������ 0 	outfolder 	OutFolder��  ��  � l �������� o  ������ 0 outfilename OutFilename��  ��  � m  ���� ���  . t x t��  ��  ��  ��  � o      ���� 0 
outlogname 
OutLogname� ��� r  ����� l �������� n  ����� 1  ����
�� 
strq� l �������� b  ����� b  ����� l �������� o  ������ 0 	outfolder 	OutFolder��  ��  � l �������� o  ������ 0 outfilename OutFilename��  ��  � m  ���� ���  . m 4 v��  ��  ��  ��  � o      ���� 0 
outputpath 
OutputPath� ��� l ����������  ��  ��  � ��� l ��������  � 4 .log the encode output and the log output paths   � ��� \ l o g   t h e   e n c o d e   o u t p u t   a n d   t h e   l o g   o u t p u t   p a t h s� ��� I �������
�� .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� m  ���� ��� r t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   E n c o d e   g o i n g   t o :  � o  ���� 0 
outputpath 
OutputPath� m  ���� ���    > >  � o  ���~�~ $0 breakfastlonglog BreakfastLongLog��  � ��� I ���}��|
�} .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� m  ���� ��� l t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   L o g   g o i n g   t o :  � o  ���{�{ 0 
outlogname 
OutLogname� m  ���� ���    > >  � o  ���z�z $0 breakfastlonglog BreakfastLongLog�|  � ��� l ���y�x�w�y  �x  �w  � ��� l ���v���v  � ` Zcolor the file we're about to convert green so the script recognizes it as processed later   � ��� � c o l o r   t h e   f i l e   w e ' r e   a b o u t   t o   c o n v e r t   g r e e n   s o   t h e   s c r i p t   r e c o g n i z e s   i t   a s   p r o c e s s e d   l a t e r� ��u� O  �
��� r  �	��� m  ���t�t � n      ��� 1  �s
�s 
labi� 4  ��r�
�r 
cobj� o  �q�q 0 thisitem ThisItem� m  �����                                                                                  MACS   alis    r  Macintosh HD               �a��H+     �
Finder.app                                                       uFò��        ����  	                CoreServices    �b      ó3"       �   Q   P  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �u  ��  � k  �� ��� l �p���p  � c ]we didn't pass the extension filter, signal the encode code to be blocked and log the failure   � ��� � w e   d i d n ' t   p a s s   t h e   e x t e n s i o n   f i l t e r ,   s i g n a l   t h e   e n c o d e   c o d e   t o   b e   b l o c k e d   a n d   l o g   t h e   f a i l u r e� ��� r  ��� m  �o�o  � o      �n�n 0 doencode DoEncode� ��m� I �l��k
�l .sysoexecTEXT���     TEXT� b  ��� m  �� ��� � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   F A I L E D   e x t e n s i o n   f i l t e r   > >  � o  �j�j $0 breakfastlonglog BreakfastLongLog�k  �m  ��  �  � k  !2�� ��� l !!�i���i  � � �we didn't pass the label filter (the file was already processed or someone is too organized), signal the encode code to be blocked and log the failure   � ���, w e   d i d n ' t   p a s s   t h e   l a b e l   f i l t e r   ( t h e   f i l e   w a s   a l r e a d y   p r o c e s s e d   o r   s o m e o n e   i s   t o o   o r g a n i z e d ) ,   s i g n a l   t h e   e n c o d e   c o d e   t o   b e   b l o c k e d   a n d   l o g   t h e   f a i l u r e� ��� r  !$��� m  !"�h�h  � o      �g�g 0 doencode DoEncode� ��f� I %2�e��d
�e .sysoexecTEXT���     TEXT� b  %.��� m  %(�� ��� | t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   F A I L E D   l a b e l   c o l o r   > >  � o  (-�c�c $0 breakfastlonglog BreakfastLongLog�d  �f  �  � m  �����                                                                                  MACS   alis    r  Macintosh HD               �a��H+     �
Finder.app                                                       uFò��        ����  	                CoreServices    �b      ó3"       �   Q   P  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� l 44�b�a�`�b  �a  �`  � ��� l 44�_���_  � ' !check if we're supposed to encode   � ��� B c h e c k   i f   w e ' r e   s u p p o s e d   t o   e n c o d e� � � Z  4��^�] =  47 o  45�\�\ 0 doencode DoEncode m  56�[�[  k  :�  l ::�Z	�Z   � �dump parsed filenames to queue.txt, I tried writing CSV for easier editing but this doesn't work because CSV parses the , in encoding options as a separate field   	 �

B d u m p   p a r s e d   f i l e n a m e s   t o   q u e u e . t x t ,   I   t r i e d   w r i t i n g   C S V   f o r   e a s i e r   e d i t i n g   b u t   t h i s   d o e s n ' t   w o r k   b e c a u s e   C S V   p a r s e s   t h e   ,   i n   e n c o d i n g   o p t i o n s   a s   a   s e p a r a t e   f i e l d  I :g�Y�X
�Y .sysoexecTEXT���     TEXT b  :c b  :] b  :Y b  :U b  :Q b  :K b  :G b  :C b  :? m  :=   �!! 
 e c h o   o  =>�W�W 0 
sourcename   m  ?B"" �##  \ ; o  CF�V�V 0 
outputpath 
OutputPath m  GJ$$ �%%  \ ; o  KP�U�U "0 encodingoptions EncodingOptions m  QT&& �''  \ ; o  UX�T�T 0 
outlogname 
OutLogname m  Y\(( �))    > >   o  ]b�S�S 0 	queuepath 	QueuePath�X   *+* l hh�R�Q�P�R  �Q  �P  + ,-, l hh�O./�O  . s mset isHandbrakeRunning to do shell script "ps ax | grep HandBrakeCLI | grep -v grep | wc -l | cut -d ' ' -f8"   / �00 � s e t   i s H a n d b r a k e R u n n i n g   t o   d o   s h e l l   s c r i p t   " p s   a x   |   g r e p   H a n d B r a k e C L I   |   g r e p   - v   g r e p   |   w c   - l   |   c u t   - d   '   '   - f 8 "- 121 l hh�N34�N  3 N H isHandbrakeRunning returns the number of HandBrakeCLI processes running   4 �55 �   i s H a n d b r a k e R u n n i n g   r e t u r n s   t h e   n u m b e r   o f   H a n d B r a k e C L I   p r o c e s s e s   r u n n i n g2 676 l hh�M�L�K�M  �L  �K  7 898 l hh�J�I�H�J  �I  �H  9 :;: Z  h�<=�G>< = hr?@? I  hp�FA�E�F 0 	isrunning 	isRunningA B�DB m  ilCC �DD  B r e a k f a s t�D  �E  @ m  pq�C
�C boovfals= k  u�EE FGF l uu�BHI�B  H W Qwe're not currently encoding, log it, give the encoding script a kick in the arse   I �JJ � w e ' r e   n o t   c u r r e n t l y   e n c o d i n g ,   l o g   i t ,   g i v e   t h e   e n c o d i n g   s c r i p t   a   k i c k   i n   t h e   a r s eG KLK I u��AM�@
�A .sysoexecTEXT���     TEXTM b  u~NON m  uxPP �QQ � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   B r e a k f a s t   N O T   r e p o r t i n g   r u n n i n g ,   s o   a s k i n g   e n c o d e r   t o   s t a r t . . .   > >  O o  x}�?�? $0 breakfastlonglog BreakfastLongLog�@  L RSR l ���>�=�<�>  �=  �<  S TUT l ���;VW�;  V   Send it to Breakfast   W �XX *   S e n d   i t   t o   B r e a k f a s tU Y�:Y O  ��Z[Z k  ��\\ ]^] I ���9�8�7
�9 .aevtoappnull  �   � ****�8  �7  ^ _�6_ I ���5�4�3
�5 .miscactvnull��� ��� obj �4  �3  �6  [ 4  ���2`
�2 
capp` o  ���1�1 0 apppath AppPath�:  �G  > k  ��aa bcb l ���0de�0  d ( "already encoding, quietly log this   e �ff D a l r e a d y   e n c o d i n g ,   q u i e t l y   l o g   t h i sc g�/g I ���.h�-
�. .sysoexecTEXT���     TEXTh b  ��iji m  ��kk �ll � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   B r e a k f a s t   i s   r e p o r t i n g   r u n n i n g ,   s o   n o t   a s k i n g   e n c o d e r   t o   s t a r t . . .   > >  j o  ���,�, $0 breakfastlonglog BreakfastLongLog�-  �/  ; m�+m l ���*�)�(�*  �)  �(  �+  �^  �]    non l ���'�&�%�'  �&  �%  o pqp l ���$rs�$  r I Cnote for the loop that we passed through index 1 of the added files   s �tt � n o t e   f o r   t h e   l o o p   t h a t   w e   p a s s e d   t h r o u g h   i n d e x   1   o f   t h e   a d d e d   f i l e sq u�#u r  ��vwv [  ��xyx o  ���"�" 0 i  y m  ���!�! w o      � �  0 i  �#   � ?   � �z{z o   � ��� 0 i  { l  � �|��| l  � �}��} n   � �~~ m   � ��
� 
nmbr n   � ���� 2  � ��
� 
cobj� o   � ��� 0 
addeditems 
addedItems�  �  �  �   � ��� I �����
� .sysoexecTEXT���     TEXT� b  ����� m  ���� ��� � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   E x i t e d   r e p e a t   l o o p ,   a l l   f i l e s   s h o u l d   b e   h a n d l e d   > >  � o  ���� $0 breakfastlonglog BreakfastLongLog�  �   � R      ���
� .ascrerr ****      � ****�  �  ��  ��   ) ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     �
���
  � ( " isRunning created by Nando Vieira   � ��� D   i s R u n n i n g   c r e a t e d   b y   N a n d o   V i e i r a� ��� l     �	���	  � "  http://simplesideias.com.br   � ��� 8   h t t p : / / s i m p l e s i d e i a s . c o m . b r� ��� i   % (��� I      ���� 0 	isrunning 	isRunning� ��� o      �� 0 appname appName�  �  � O     ��� k    �� ��� r    ��� E    ��� l   	���� n    	��� 1    	�
� 
pnam� 2   � 
�  
prcs�  �  � o   	 
���� 0 appname appName� o      ���� 0 isapprunning isAppRunning� ���� L    �� o    ���� 0 isapprunning isAppRunning��  � m     ���                                                                                  sevs   alis    �  Macintosh HD               �a��H+     �System Events.app                                                �	�n��        ����  	                CoreServices    �b      �oB.       �   Q   P  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �       �����������������������������  � ���������������������������� &0 breakfastshortlog BreakfastShortLog�� $0 breakfastlonglog BreakfastLongLog�� 0 extensionlist ExtensionList��  0 calledbyscript CalledByScript�� 0 	outfolder 	OutFolder�� 0 watchfolder WatchFolder�� 0 
addeditems 
addedItems�� "0 encodingoptions EncodingOptions�� 0 	queuepath 	QueuePath�� 0 resourcepath resourcePath�� 0 apppath AppPath
�� .facofgetnull���     alis�� 0 	isrunning 	isRunning
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
msng� �� +��������
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
OutputPath� T 6���� E�� M U d p�� � � � � � ����� �����������������9��go��������������������68CE������k���������������� "$&(C��P������k�����
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
ctxt�� 0 	isrunning 	isRunning
�� 
capp
�� .aevtoappnull  �   � ****
�� .miscactvnull��� ��� obj ��  ��  ����kv��,FO�j Ec   O�j Ec  O�j Ec  
O�j E�O��,E�O���,FO��-EQc  O���,FO�j �%Ec  O�j Ec  O�j Ec  O�j OP�a -a ,%a %b   %j OkE�Oh��a -a ,�a �/E�O�j E�Oa �a ,a ,%a %�a ,%a a a %b  %l O�a ,E�Omj O�a ,E�O /h��a b  %j O�a ,E�Omj O�a ,E�[OY��O�a ,a    �a !b  %j Oa " �*a #�/a -a ,E�Oa $�%a %%b  %j O ak�kh 
*a #�/a �/E�O��a &&%E�Oa '�a &&a ,a ,%a (%b  %j Oa )�a -a ,%a *%b  %j [OY��UY hOa "O�a +,a ,&a -.a .b  %j Ob  �a /, �a 0b  %j OkE�O�a ,a ,E�Oa 1�%a 2%b  %j Oa 3�%a 4%b   %j O�a ,a 5-a 6,a &E�O*a 7a 8a 9�a : ;E�O�[a <\[Z�k\Zi2E�O�a 5-a 6,a &E�Ob  �%a =%a ,E^ Ob  �%a >%a ,E^ Oa ?] %a @%b  %j Oa A] %a B%b  %j Oa " a -*a �/a +,FUY jE�Oa Cb  %j Y jE�Oa Db  %j UO�k  ya E�%a F%] %a G%b  %a H%] %a I%b  %j O*a Jk+ Kf  ,a Lb  %j O*a Mb  
/ *j NO*j OUY a Pb  %j OPY hO�kE�[OY��Oa Qb  %j W X R Sh� ������������� 0 	isrunning 	isRunning�� ����� �  ���� 0 appname appName��  � ������ 0 appname appName�� 0 isapprunning isAppRunning� �����
�� 
prcs
�� 
pnam�� � *�-�,�E�O�Uascr  ��ޭ