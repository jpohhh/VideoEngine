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
msng !  # $ # j     �� %�� 0 encodingfile EncodingFile % m    ��
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
�� .sysoexecTEXT���     TEXT L m     M M � N N f d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   B r e a k f a s t L o n g L o g��  ��  ��   J o      ���� $0 breakfastlonglog BreakfastLongLog H  O P O l     ��������  ��  ��   P  Q R Q l     �� S T��   S N H First we go after the extensions, because they're the most complicated.    T � U U �   F i r s t   w e   g o   a f t e r   t h e   e x t e n s i o n s ,   b e c a u s e   t h e y ' r e   t h e   m o s t   c o m p l i c a t e d . R  V W V r     ' X Y X l    % Z���� Z I    %�� [��
�� .sysoexecTEXT���     TEXT [ m     ! \ \ � ] ] ` d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   E x t e n s i o n L i s t��  ��  ��   Y o      ���� 0 extensiontemp ExtensionTemp W  ^ _ ^ r   ( - ` a ` n  ( + b c b 1   ) +��
�� 
txdl c 1   ( )��
�� 
ascr a o      ���� 0 olddelimiters oldDelimiters _  d e d r   . 3 f g f m   . / h h � i i  ; g n      j k j 1   0 2��
�� 
txdl k 1   / 0��
�� 
ascr e  l m l s   4 > n o n n   4 7 p q p 2  5 7��
�� 
citm q o   4 5���� 0 extensiontemp ExtensionTemp o o      ���� 0 extensionlist ExtensionList m  r s r r   ? D t u t o   ? @���� 0 olddelimiters oldDelimiters u n      v w v 1   A C��
�� 
txdl w 1   @ A��
�� 
ascr s  x y x l  E E�� z {��   z   Log Extension List    { � | | &   L o g   E x t e n s i o n   L i s t y  } ~ } l  E E��  ���    � � do shell script "time=$(date +%Y%m%d-%H%M%S); echo $time We will be looking for EXTENSIONS: " & (item 1 of ExtensionList) & " as well as " & (item 2 of ExtensionList) & " >> " & BreakfastLongLog    � � � ��   d o   s h e l l   s c r i p t   " t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   W e   w i l l   b e   l o o k i n g   f o r   E X T E N S I O N S :   "   &   ( i t e m   1   o f   E x t e n s i o n L i s t )   &   "   a s   w e l l   a s   "   &   ( i t e m   2   o f   E x t e n s i o n L i s t )   &   "   > >   "   &   B r e a k f a s t L o n g L o g ~  � � � l  E E��������  ��  ��   �  � � � l  E E�� � ���   � ( " Now the rest of the properties...    � � � � D   N o w   t h e   r e s t   o f   t h e   p r o p e r t i e s . . . �  � � � r   E R � � � b   E L � � � l  E J ����� � I  E J�� ���
�� .sysoexecTEXT���     TEXT � m   E F � � � � � X d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   O u t F o l d e r��  ��  ��   � m   J K � � � � �  / � o      ���� 0 	outfolder 	OutFolder �  � � � r   S ^ � � � l  S X ����� � I  S X�� ���
�� .sysoexecTEXT���     TEXT � m   S T � � � � � d d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   E n c o d i n g O p t i o n s��  ��  ��   � o      ���� "0 encodingoptions EncodingOptions �  � � � r   _ j � � � l  _ d ����� � I  _ d�� ���
�� .sysoexecTEXT���     TEXT � m   _ ` � � � � � X d e f a u l t s   r e a d   c o m . B r e a k f a s t . e n g i n e   Q u e u e P a t h��  ��  ��   � o      ���� 0 	queuepath 	QueuePath �  � � � l  k k��������  ��  ��   �  � � � l  k k�� � ���   � Q K Now we set our own default to let the app know we want it to do the deal.     � � � � �   N o w   w e   s e t   o u r   o w n   d e f a u l t   t o   l e t   t h e   a p p   k n o w   w e   w a n t   i t   t o   d o   t h e   d e a l .   �  � � � I  k p�� ���
�� .sysoexecTEXT���     TEXT � m   k l � � � � � � d e f a u l t s   w r i t e   c o m . B r e a k f a s t . e n g i n e   C a l l e d B y S c r i p t   - b o o l e a n   ' y e s '��   �  � � � l  q q��������  ��  ��   �  � � � l  q q��������  ��  ��   �  ��� � Q   q� � ��� � k   t� � �  � � � l  t t��������  ��  ��   �  � � � l  t t�� � ���   � 6 0log that an event occured to trigger this script    � � � � ` l o g   t h a t   a n   e v e n t   o c c u r e d   t o   t r i g g e r   t h i s   s c r i p t �  � � � I  t ��� ���
�� .sysoexecTEXT���     TEXT � b   t � � � � b   t � � � � b   t } � � � m   t u � � � � � P t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   � l  u | ����� � n   u | � � � m   x |��
�� 
nmbr � n   u x � � � 2  v x��
�� 
cobj � o   u v���� 0 
addeditems 
addedItems��  ��   � m   } � � � � � �     i t e m s   a d d e d   > >   � o   � ����� &0 breakfastshortlog BreakfastShortLog��   �  � � � l  � ��� � ���   � 8 2iterate through all the files added to this folder    � � � � d i t e r a t e   t h r o u g h   a l l   t h e   f i l e s   a d d e d   t o   t h i s   f o l d e r �  � � � r   � � � � � m   � �����  � o      ���� 0 i   �  � � � W   �� � � � k   �� � �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � o   � ����� 0 i   � o   � ����� 0 
addeditems 
addedItems � o      ���� 0 thisitem ThisItem �  � � � r   � � � � � l  � � ����� � I  � ��� ���
�� .sysonfo4asfe        file � o   � ����� 0 thisitem ThisItem��  ��  ��   � l      ����� � o      ���� 0 iteminfo ItemInfo��  ��   �  � � � l  � ��� � ���   � 0 *log that we're processing the current item    � � � � T l o g   t h a t   w e ' r e   p r o c e s s i n g   t h e   c u r r e n t   i t e m �  � � � I  � �� � �
� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � f t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   P R O C E S S I N G   � l  � � ��~�} � n   � �   1   � ��|
�| 
strq l  � ��{�z n   � � 1   � ��y
�y 
psxp o   � ��x�x 0 thisitem ThisItem�{  �z  �~  �}   � m   � � �    a s   w e l l   a s   � l  � ��w�v n   � �	 1   � ��u
�u 
pnam	 o   � ��t�t 0 iteminfo ItemInfo�w  �v   � �s
�r
�s 
rtyp
 b   � � b   � � m   � ��q
�q 
TEXT m   � � �    > >   o   � ��p�p $0 breakfastlonglog BreakfastLongLog�r   �  l  � ��o�n�m�o  �n  �m    l  � ��l�l   P Jcheck to make sure the item has finished moving before we start processing    � � c h e c k   t o   m a k e   s u r e   t h e   i t e m   h a s   f i n i s h e d   m o v i n g   b e f o r e   w e   s t a r t   p r o c e s s i n g  r   � � n   � � 1   � ��k
�k 
ptsz o   � ��j�j 0 iteminfo ItemInfo o      �i�i 0 oldsize oldSize  I  � ��h �g
�h .sysodelanull��� ��� nmbr  m   � ��f�f �g   !"! r   � �#$# n   � �%&% 1   � ��e
�e 
ptsz& o   � ��d�d 0 iteminfo ItemInfo$ o      �c�c 0 newsize newSize" '(' V   �)*) k   �++ ,-, I  ��b.�a
�b .sysoexecTEXT���     TEXT. b   � /0/ m   � �11 �22 � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   T h r o t t l i n g   p r o c e s s i n g   u n t i l   m o v i n g   h a s   s e t t l e d .   > >  0 o   � ��`�` $0 breakfastlonglog BreakfastLongLog�a  - 343 l �_56�_  5   Get the file size.   6 �77 &   G e t   t h e   f i l e   s i z e .4 898 r  :;: n  
<=< 1  
�^
�^ 
ptsz= o  �]�] 0 iteminfo ItemInfo; o      �\�\ 0 oldsize oldSize9 >?> I �[@�Z
�[ .sysodelanull��� ��� nmbr@ m  �Y�Y �Z  ? ABA l �XCD�X  C 8 2 Sample the size again after delay for comparison.   D �EE d   S a m p l e   t h e   s i z e   a g a i n   a f t e r   d e l a y   f o r   c o m p a r i s o n .B F�WF r  GHG n  IJI 1  �V
�V 
ptszJ o  �U�U 0 iteminfo ItemInfoH o      �T�T 0 newsize newSize�W  * >  � �KLK o   � ��S�S 0 newsize newSizeL o   � ��R�R 0 oldsize oldSize( MNM l   �Q�P�O�Q  �P  �O  N OPO l   �NQR�N  Q � zCheck if one of the added items is a folder, if it is get all the files in that folder too, and add them to our item array   R �SS � C h e c k   i f   o n e   o f   t h e   a d d e d   i t e m s   i s   a   f o l d e r ,   i f   i t   i s   g e t   a l l   t h e   f i l e s   i n   t h a t   f o l d e r   t o o ,   a n d   a d d   t h e m   t o   o u r   i t e m   a r r a yP TUT Z   �VW�M�LV l  )X�K�JX =  )YZY l  %[�I�H[ n   %\]\ 1  !%�G
�G 
kind] l  !^�F�E^ o   !�D�D 0 iteminfo ItemInfo�F  �E  �I  �H  Z m  %(__ �``  F o l d e r�K  �J  W k  ,�aa bcb I ,9�Cd�B
�C .sysoexecTEXT���     TEXTd b  ,5efe m  ,/gg �hh � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   T h i s   i s   a   f o l d e r ,   s o   c h e c k   w h a t \ ' s   i n s i d e   > >  f o  /4�A�A $0 breakfastlonglog BreakfastLongLog�B  c i�@i O  :�jkj k  @�ll mnm r  @Nopo l @Lq�?�>q n  @Lrsr m  HL�=
�= 
nmbrs n @Htut 2 FH�<
�< 
cobju 4  @F�;v
�; 
cfolv o  DE�:�: 0 thisitem ThisItem�?  �>  p o      �9�9 0 
itemnumber 
ItemNumbern wxw I Ob�8y�7
�8 .sysoexecTEXT���     TEXTy b  O^z{z b  OX|}| b  OT~~ m  OR�� ��� � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   N u m b e r   o f   i t e m s   i n   f o l d e r ?   o  RS�6�6 0 
itemnumber 
ItemNumber} m  TW�� ���    > >  { o  X]�5�5 $0 breakfastlonglog BreakfastLongLog�7  x ��4� Y  c���3���2� k  m��� ��� r  mx��� n mv��� 4  sv�1�
�1 
cobj� o  tu�0�0 0 j  � 4  ms�/�
�/ 
cfol� o  qr�.�. 0 thisitem ThisItem� o      �-�- 0 
folderitem 
FolderItem� ��� r  y���� b  y���� o  yz�,�, 0 
addeditems 
addedItems� l z��+�*� c  z��� o  z{�)�) 0 
folderitem 
FolderItem� m  {~�(
�( 
alis�+  �*  � o      �'�' 0 
addeditems 
addedItems� ��� I ���&��%
�& .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� m  ���� ��� \ t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   A d d e d  � l ����$�#� n  ����� 1  ���"
�" 
strq� l ����!� � n  ����� 1  ���
� 
psxp� l ������ c  ����� o  ���� 0 
folderitem 
FolderItem� m  ���
� 
alis�  �  �!  �   �$  �#  � m  ���� ���    > >  � o  ���� $0 breakfastlonglog BreakfastLongLog�%  � ��� I �����
� .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� m  ���� ��� l t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   N o w   t h e r e   a r e  � n  ����� m  ���
� 
nmbr� n ����� 2 ���
� 
cobj� o  ���� 0 
addeditems 
addedItems� m  ���� ��� 2   i t e m s   i n   a d d e d _ i t e m s   > >  � o  ���� $0 breakfastlonglog BreakfastLongLog�  �  �3 0 j  � m  fg�� � o  gh�� 0 
itemnumber 
ItemNumber�2  �4  k m  :=���                                                                                  MACS   alis    r  Macintosh HD               �a��H+     �
Finder.app                                                       uFò��        ����  	                CoreServices    �b      ó3"       �   Q   P  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �@  �M  �L  U ��� l ������  �  �  � ��� l ������  � � �check to make sure that the extension is in the allow list, and that the file hasn't been processed already (label color isn't green)   � ���
 c h e c k   t o   m a k e   s u r e   t h a t   t h e   e x t e n s i o n   i s   i n   t h e   a l l o w   l i s t ,   a n d   t h a t   t h e   f i l e   h a s n ' t   b e e n   p r o c e s s e d   a l r e a d y   ( l a b e l   c o l o r   i s n ' t   g r e e n )� ��� O  ���� k  ��� ��� l ������  � . (check if the label is green for the file   � ��� P c h e c k   i f   t h e   l a b e l   i s   g r e e n   f o r   t h e   f i l e� ��� Z  ����
�� > ����� c  ����� l ����	�� l ������ n  ����� 1  ���
� 
labi� o  ���� 0 thisitem ThisItem�  �  �	  �  � m  ���
� 
long� m  ���� � k  ��� ��� l ������  � ) #log that we passed the color filter   � ��� F l o g   t h a t   w e   p a s s e d   t h e   c o l o r   f i l t e r� ��� I ��� ���
�  .sysoexecTEXT���     TEXT� b  ����� m  ���� ��� � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   P A S S E D   l a b e l   c o l o r   f i l t e r   > >  � o  ������ $0 breakfastlonglog BreakfastLongLog��  � ��� l ��������  � 9 3check if the file has one of our desired extensions   � ��� f c h e c k   i f   t h e   f i l e   h a s   o n e   o f   o u r   d e s i r e d   e x t e n s i o n s� ���� Z  ������� l �������� E ����� l �������� o  ������ 0 extensionlist ExtensionList��  ��  � l �������� n  ����� 1  ����
�� 
nmxt� l �������� o  ������ 0 iteminfo ItemInfo��  ��  ��  ��  ��  ��  � k  ���� ��� l ����� ��  � - 'log that we passed the extension filter     � N l o g   t h a t   w e   p a s s e d   t h e   e x t e n s i o n   f i l t e r�  I �����
�� .sysoexecTEXT���     TEXT b  � m  �� � � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   P A S S E D   e x t e n s i o n   f i l t e r   > >   o  ����� $0 breakfastlonglog BreakfastLongLog��   	
	 l ��������  ��  ��  
  l ����   r lneed some way to only invoke HandbrakeCLI if the file is in the extension list, otherwise the script crashes    � � n e e d   s o m e   w a y   t o   o n l y   i n v o k e   H a n d b r a k e C L I   i f   t h e   f i l e   i s   i n   t h e   e x t e n s i o n   l i s t ,   o t h e r w i s e   t h e   s c r i p t   c r a s h e s  r  
 m  ����  o      ���� 0 doencode DoEncode  l ��������  ��  ��    l ����   % generate input path, and log it    � > g e n e r a t e   i n p u t   p a t h ,   a n d   l o g   i t  r   l ���� n   !  1  ��
�� 
strq! l "����" n  #$# 1  ��
�� 
psxp$ o  ���� 0 thisitem ThisItem��  ��  ��  ��   o      ���� 0 
sourcename   %&% I *��'��
�� .sysoexecTEXT���     TEXT' b  &()( b   *+* b  ,-, m  .. �// j t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   S o u r c e   f i l e :  - o  ���� 0 
sourcename  + m  00 �11    > >  ) o   %���� $0 breakfastlonglog BreakfastLongLog��  & 232 I +>��4��
�� .sysoexecTEXT���     TEXT4 b  +:565 b  +4787 b  +09:9 m  +.;; �<< z t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   F i l e   p a s s e d   f i l t e r s ,  : o  ./���� 0 
sourcename  8 m  03== �>> (   i s   b e i n g   q u e u e d   > >  6 o  49���� &0 breakfastshortlog BreakfastShortLog��  3 ?@? l ??��������  ��  ��  @ ABA l ??��CD��  C � �generate output path by removing the extension from the input filename, add the prefix of the directory to put it in, and adding m4v at the end   D �EE g e n e r a t e   o u t p u t   p a t h   b y   r e m o v i n g   t h e   e x t e n s i o n   f r o m   t h e   i n p u t   f i l e n a m e ,   a d d   t h e   p r e f i x   o f   t h e   d i r e c t o r y   t o   p u t   i t   i n ,   a n d   a d d i n g   m 4 v   a t   t h e   e n dB FGF l ??��HI��  H 8 2 generate a log output path similarly (txt at end)   I �JJ d   g e n e r a t e   a   l o g   o u t p u t   p a t h   s i m i l a r l y   ( t x t   a t   e n d )G KLK r  ?RMNM c  ?POPO l ?LQ����Q l ?LR����R n  ?LSTS 1  HL��
�� 
rvseT n  ?HUVU 2  DH��
�� 
cha V l ?DW����W n  ?DXYX 1  @D��
�� 
pnamY l ?@Z����Z o  ?@���� 0 iteminfo ItemInfo��  ��  ��  ��  ��  ��  ��  ��  P m  LO��
�� 
TEXTN o      ���� 0 outfilename OutFilenameL [\[ r  Sf]^] l Sd_����_ I Sd����`
�� .sysooffslong    ��� null��  ` ��ab
�� 
psofa m  WZcc �dd  .b ��e��
�� 
psine o  ]^���� 0 outfilename OutFilename��  ��  ��  ^ o      ���� 0 x  \ fgf r  gxhih l gvj����j n  gvklk 7 hv��mn
�� 
ctxtm l nro����o [  nrpqp o  op���� 0 x  q m  pq���� ��  ��  n m  su������l o  gh���� 0 outfilename OutFilename��  ��  i o      ���� 0 outfilename OutFilenameg rsr r  y�tut c  y�vwv l y�x����x l y�y����y n  y�z{z 1  ~���
�� 
rvse{ n  y~|}| 2  z~��
�� 
cha } o  yz���� 0 outfilename OutFilename��  ��  ��  ��  w m  ����
�� 
TEXTu o      ���� 0 outfilename OutFilenames ~~ r  ����� l �������� n  ����� 1  ����
�� 
strq� l �������� b  ����� b  ����� l �������� o  ������ 0 	outfolder 	OutFolder��  ��  � l �������� o  ������ 0 outfilename OutFilename��  ��  � m  ���� ���  . t x t��  ��  ��  ��  � o      ���� 0 
outlogname 
OutLogname ��� r  ����� l �������� n  ����� 1  ����
�� 
strq� l �������� b  ����� b  ����� l �������� o  ������ 0 	outfolder 	OutFolder��  ��  � l �������� o  ������ 0 outfilename OutFilename��  ��  � m  ���� ���  . m 4 v��  ��  ��  ��  � o      ���� 0 
outputpath 
OutputPath� ��� l ����������  ��  ��  � ��� l ��������  � 4 .log the encode output and the log output paths   � ��� \ l o g   t h e   e n c o d e   o u t p u t   a n d   t h e   l o g   o u t p u t   p a t h s� ��� I �������
�� .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� m  ���� ��� r t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   E n c o d e   g o i n g   t o :  � o  ������ 0 
outputpath 
OutputPath� m  ���� ���    > >  � o  ������ $0 breakfastlonglog BreakfastLongLog��  � ��� I �������
�� .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� m  ���� ��� l t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   L o g   g o i n g   t o :  � o  ������ 0 
outlogname 
OutLogname� m  ���� ���    > >  � o  ���� $0 breakfastlonglog BreakfastLongLog��  � ��� l ���~�}�|�~  �}  �|  � ��� l ���{���{  � ` Zcolor the file we're about to convert green so the script recognizes it as processed later   � ��� � c o l o r   t h e   f i l e   w e ' r e   a b o u t   t o   c o n v e r t   g r e e n   s o   t h e   s c r i p t   r e c o g n i z e s   i t   a s   p r o c e s s e d   l a t e r� ��z� O  ����� r  ����� m  ���y�y � n      ��� 1  ���x
�x 
labi� 4  ���w�
�w 
cobj� o  ���v�v 0 thisitem ThisItem� m  �����                                                                                  MACS   alis    r  Macintosh HD               �a��H+     �
Finder.app                                                       uFò��        ����  	                CoreServices    �b      ó3"       �   Q   P  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �z  ��  � k  ��� ��� l ���u���u  � c ]we didn't pass the extension filter, signal the encode code to be blocked and log the failure   � ��� � w e   d i d n ' t   p a s s   t h e   e x t e n s i o n   f i l t e r ,   s i g n a l   t h e   e n c o d e   c o d e   t o   b e   b l o c k e d   a n d   l o g   t h e   f a i l u r e� ��� r  ����� m  ���t�t  � o      �s�s 0 doencode DoEncode� ��r� I ��q��p
�q .sysoexecTEXT���     TEXT� b  � ��� m  ���� ��� � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   F A I L E D   e x t e n s i o n   f i l t e r   > >  � o  ���o�o $0 breakfastlonglog BreakfastLongLog�p  �r  ��  �
  � k  �� ��� l �n���n  � � �we didn't pass the label filter (the file was already processed or someone is too organized), signal the encode code to be blocked and log the failure   � ���, w e   d i d n ' t   p a s s   t h e   l a b e l   f i l t e r   ( t h e   f i l e   w a s   a l r e a d y   p r o c e s s e d   o r   s o m e o n e   i s   t o o   o r g a n i z e d ) ,   s i g n a l   t h e   e n c o d e   c o d e   t o   b e   b l o c k e d   a n d   l o g   t h e   f a i l u r e� ��� r  
��� m  �m�m  � o      �l�l 0 doencode DoEncode� ��k� I �j��i
�j .sysoexecTEXT���     TEXT� b  ��� m  �� ��� | t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   F A I L E D   l a b e l   c o l o r   > >  � o  �h�h $0 breakfastlonglog BreakfastLongLog�i  �k  �  � m  �����                                                                                  MACS   alis    r  Macintosh HD               �a��H+     �
Finder.app                                                       uFò��        ����  	                CoreServices    �b      ó3"       �   Q   P  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� l �g�f�e�g  �f  �e  � ��� l �d���d  � ' !check if we're supposed to encode   � ��� B c h e c k   i f   w e ' r e   s u p p o s e d   t o   e n c o d e� ��� Z  ����c�b� =  ��� o  �a�a 0 doencode DoEncode� m  �`�` � k   ��� ��� l   �_ �_    � �dump parsed filenames to queue.txt, I tried writing CSV for easier editing but this doesn't work because CSV parses the , in encoding options as a separate field    �B d u m p   p a r s e d   f i l e n a m e s   t o   q u e u e . t x t ,   I   t r i e d   w r i t i n g   C S V   f o r   e a s i e r   e d i t i n g   b u t   t h i s   d o e s n ' t   w o r k   b e c a u s e   C S V   p a r s e s   t h e   ,   i n   e n c o d i n g   o p t i o n s   a s   a   s e p a r a t e   f i e l d�  I  M�^�]
�^ .sysoexecTEXT���     TEXT b   I b   C	 b   ?

 b   ; b   7 b   1 b   - b   ) b   % m   # � 
 e c h o   o  #$�\�\ 0 
sourcename   m  %( �  \ ; o  ),�[�[ 0 
outputpath 
OutputPath m  -0 �  \ ; o  16�Z�Z "0 encodingoptions EncodingOptions m  7: �  \ ; o  ;>�Y�Y 0 
outlogname 
OutLogname	 m  ?B   �!!    > >   o  CH�X�X 0 	queuepath 	QueuePath�]   "#" l NN�W�V�U�W  �V  �U  # $%$ l NN�T&'�T  & s mset isHandbrakeRunning to do shell script "ps ax | grep HandBrakeCLI | grep -v grep | wc -l | cut -d ' ' -f8"   ' �(( � s e t   i s H a n d b r a k e R u n n i n g   t o   d o   s h e l l   s c r i p t   " p s   a x   |   g r e p   H a n d B r a k e C L I   |   g r e p   - v   g r e p   |   w c   - l   |   c u t   - d   '   '   - f 8 "% )*) l NN�S+,�S  + N H isHandbrakeRunning returns the number of HandBrakeCLI processes running   , �-- �   i s H a n d b r a k e R u n n i n g   r e t u r n s   t h e   n u m b e r   o f   H a n d B r a k e C L I   p r o c e s s e s   r u n n i n g* ./. l NN�R�Q�P�R  �Q  �P  / 010 l NN�O�N�M�O  �N  �M  1 232 Z  N�45�L64 = NX787 I  NV�K9�J�K 0 	isrunning 	isRunning9 :�I: m  OR;; �<<  B r e a k f a s t�I  �J  8 m  VW�H
�H boovfals5 k  [�== >?> l [[�G@A�G  @ W Qwe're not currently encoding, log it, give the encoding script a kick in the arse   A �BB � w e ' r e   n o t   c u r r e n t l y   e n c o d i n g ,   l o g   i t ,   g i v e   t h e   e n c o d i n g   s c r i p t   a   k i c k   i n   t h e   a r s e? CDC I [h�FE�E
�F .sysoexecTEXT���     TEXTE b  [dFGF m  [^HH �II � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   B r e a k f a s t   N O T   r e p o r t i n g   r u n n i n g ,   s o   a s k i n g   e n c o d e r   t o   s t a r t . . .   > >  G o  ^c�D�D $0 breakfastlonglog BreakfastLongLog�E  D JKJ r  itLML l ipN�C�BN n  ipOPO 1  lp�A
�A 
strqP o  il�@�@ 0 
outputpath 
OutputPath�C  �B  M o      �?�? 0 
outputpath 
OutputPathK QRQ I u��>S�=
�> .sysoexecTEXT���     TEXTS b  u�TUT m  uxVV �WW r d e f a u l t s   w r i t e   c o m . B r e a k f a s t . e n g i n e   E n c o d i n g F i l e   - s t r i n g  U l xX�<�;X c  xYZY o  x{�:�: 0 
outputpath 
OutputPathZ m  {~�9
�9 
TEXT�<  �;  �=  R [\[ l ���8]^�8  ]  
 Log that.   ^ �__    L o g   t h a t .\ `a` I ���7b�6
�7 .sysoexecTEXT���     TEXTb b  ��cdc m  ��ee �ff � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   w e   j u s t   w r o t e   t h e   O u t p u t P a t h . . .   s h o u l d   s t a r t   n o w   > >  d o  ���5�5 $0 breakfastlonglog BreakfastLongLog�6  a ghg l ���4�3�2�4  �3  �2  h iji l ���1kl�1  k   Send it to Breakfast   l �mm *   S e n d   i t   t o   B r e a k f a s tj n�0n O  ��opo k  ��qq rsr I ���/�.�-
�/ .aevtoappnull  �   � ****�.  �-  s t�,t I ���+�*�)
�+ .miscactv****      � ****�*  �)  �,  p m  ��uu�                                                                                      @  alis    �  Macintosh HD               �a��H+  �%�Breakfast.app                                                  �%����        ����  	                Release     �b      ��/S    �%�����n 
�g  z�  =Macintosh HD:Users:mike:Breakfast:build:Release:Breakfast.app     B r e a k f a s t . a p p    M a c i n t o s h   H D  0Users/mike/Breakfast/build/Release/Breakfast.app  /    ��  �0  �L  6 k  ��vv wxw l ���(yz�(  y ( "already encoding, quietly log this   z �{{ D a l r e a d y   e n c o d i n g ,   q u i e t l y   l o g   t h i sx |�'| I ���&}�%
�& .sysoexecTEXT���     TEXT} b  ��~~ m  ���� ��� � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   B r e a k f a s t   i s   r e p o r t i n g   r u n n i n g ,   s o   n o t   a s k i n g   e n c o d e r   t o   s t a r t . . .   > >   o  ���$�$ $0 breakfastlonglog BreakfastLongLog�%  �'  3 ��#� l ���"�!� �"  �!  �   �#  �c  �b  � ��� l ������  �  �  � ��� l ������  � I Cnote for the loop that we passed through index 1 of the added files   � ��� � n o t e   f o r   t h e   l o o p   t h a t   w e   p a s s e d   t h r o u g h   i n d e x   1   o f   t h e   a d d e d   f i l e s� ��� r  ����� [  ����� o  ���� 0 i  � m  ���� � o      �� 0 i  �   � ?   � ���� o   � ��� 0 i  � l  � ����� l  � ����� n   � ���� m   � ��
� 
nmbr� n   � ���� 2  � ��
� 
cobj� o   � ��� 0 
addeditems 
addedItems�  �  �  �   � ��� I �����
� .sysoexecTEXT���     TEXT� b  ����� m  ���� ��� � t i m e = $ ( d a t e   + % Y % m % d - % H % M % S ) ;   e c h o   $ t i m e   E x i t e d   r e p e a t   l o o p ,   a l l   f i l e s   s h o u l d   b e   h a n d l e d   > >  � o  ���� $0 breakfastlonglog BreakfastLongLog�  �   � R      ��
�	
� .ascrerr ****      � ****�
  �	  ��  ��   ) ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  � ( " isRunning created by Nando Vieira   � ��� D   i s R u n n i n g   c r e a t e d   b y   N a n d o   V i e i r a� ��� l     ����  � "  http://simplesideias.com.br   � ��� 8   h t t p : / / s i m p l e s i d e i a s . c o m . b r� �� � i   % (��� I      ������� 0 	isrunning 	isRunning� ���� o      ���� 0 appname appName��  ��  � O     ��� k    �� ��� r    ��� E    ��� l   	������ n    	��� 1    	��
�� 
pnam� 2   ��
�� 
prcs��  ��  � o   	 
���� 0 appname appName� o      ���� 0 isapprunning isAppRunning� ���� L    �� o    ���� 0 isapprunning isAppRunning��  � m     ���                                                                                  sevs   alis    �  Macintosh HD               �a��H+     �System Events.app                                                �	�n��        ����  	                CoreServices    �b      �oB.       �   Q   P  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �        �����������������������  � ���������������������������� &0 breakfastshortlog BreakfastShortLog�� $0 breakfastlonglog BreakfastLongLog�� 0 extensionlist ExtensionList��  0 calledbyscript CalledByScript�� 0 	outfolder 	OutFolder�� 0 watchfolder WatchFolder�� 0 
addeditems 
addedItems�� "0 encodingoptions EncodingOptions�� 0 	queuepath 	QueuePath�� 0 resourcepath resourcePath�� 0 encodingfile EncodingFile
�� .facofgetnull���     alis�� 0 	isrunning 	isRunning� ��� @ $ H O M E / L i b r a r y / L o g s / B r e a k f a s t . l o g� ��� L $ H O M E / L i b r a r y / L o g s / B r e a k f a s t _ d e b u g . l o g� ����� �  ��� ���  a v i� ���  m k v
�� 
msng� ��� : / U s e r s / m i k e / M o v i e s / E n g i n e O u t /
�� 
msng
�� 
msng� ��� 0 - Z   ' i P h o n e   &   i P o d   T o u c h '� ��� � / U s e r s / m i k e / B r e a k f a s t / b u i l d / R e l e a s e / B r e a k f a s t . a p p / C o n t e n t s / R e s o u r c e s / q u e u e . t x t
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
OutputPath� U 6���� E�� M \ h�� � � � � � ����� ��� ���������������1��_g��������������������.0;=������c���������������� ;��HVeu����������
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
�� .aevtoappnull  �   � ****
�� .miscactv****      � ****��  ��  ����kv��,FO�j Ec   O�j Ec  O�j E�O��,E�O���,FO��-EQc  O���,FO�j �%Ec  O�j Ec  O�j Ec  O�j Oe��-a ,%a %b   %j OkE�O5h���-a ,��/E�O�j E�Oa �a ,a ,%a %�a ,%a a a %b  %l O�a ,E�Omj O�a ,E�O /h��a b  %j O�a ,E�Omj O�a ,E�[OY��O�a ,a   �a  b  %j Oa ! �*a "�/�-a ,E�Oa #�%a $%b  %j O ]k�kh 
*a "�/�/E�O��a %&%E�Oa &�a %&a ,a ,%a '%b  %j Oa (��-a ,%a )%b  %j [OY��UY hOa !M�a *,a +&a ,,a -b  %j Ob  �a ., �a /b  %j OkE�O�a ,a ,E�Oa 0�%a 1%b  %j Oa 2�%a 3%b   %j O�a ,a 4-a 5,a &E�O*a 6a 7a 8�a 9 :E�O�[a ;\[Z�k\Zi2E�O�a 4-a 5,a &E�Ob  �%a <%a ,E^ Ob  �%a =%a ,E^ Oa >] %a ?%b  %j Oa @] %a A%b  %j Oa ! a ,*�/a *,FUY jE�Oa Bb  %j Y jE�Oa Cb  %j UO�k  �a D�%a E%] %a F%b  %a G%] %a H%b  %j O*a Ik+ Jf  Oa Kb  %j O] a ,E^ Oa L] a &%j Oa Mb  %j Oa N *j OO*j PUY a Qb  %j OPY hO�kE�[OY��Oa Rb  %j W X S Th� ������������� 0 	isrunning 	isRunning�� ����� �  ���� 0 appname appName��  � ������ 0 appname appName�� 0 isapprunning isAppRunning� �����
�� 
prcs
�� 
pnam�� � *�-�,�E�O�U ascr  ��ޭ