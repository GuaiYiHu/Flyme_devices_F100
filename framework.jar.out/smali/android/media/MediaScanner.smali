.class public Landroid/media/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScanner$1;,
        Landroid/media/MediaScanner$Rational;,
        Landroid/media/MediaScanner$JpegHeader;,
        Landroid/media/MediaScanner$IfdData;,
        Landroid/media/MediaScanner$ExifTag;,
        Landroid/media/MediaScanner$ExifInvalidFormatException;,
        Landroid/media/MediaScanner$ExifDataExt;,
        Landroid/media/MediaScanner$ExifParser;,
        Landroid/media/MediaScanner$ExifReader;,
        Landroid/media/MediaScanner$CountedDataInputStream;,
        Landroid/media/MediaScanner$ExifInterfaceExt;,
        Landroid/media/MediaScanner$ConshotInfo;,
        Landroid/media/MediaScanner$ConshotExif;,
        Landroid/media/MediaScanner$IfdId;,
        Landroid/media/MediaScanner$Section;,
        Landroid/media/MediaScanner$WplHandler;,
        Landroid/media/MediaScanner$MediaBulkDeleter;,
        Landroid/media/MediaScanner$MyMediaScannerClient;,
        Landroid/media/MediaScanner$PlaylistEntry;,
        Landroid/media/MediaScanner$FileEntry;
    }
.end annotation


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field private static final ALARM_SET:Ljava/lang/String; = "alarm_set"

.field private static final APP1:I = 0xffe1

.field private static final APPXTAG_PLUS_LENGTHTAG_BYTE_COUNT:I = 0x4

.field private static final DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX:I = 0x2

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final ENABLE_BULK_INSERTS:Z = true

.field private static final FILES_PRESCAN_DATE_MODIFIED_COLUMN_INDEX:I = 0x3

.field private static final FILES_PRESCAN_FORMAT_COLUMN_INDEX:I = 0x2

.field private static final FILES_PRESCAN_ID_COLUMN_INDEX:I = 0x0

.field private static final FILES_PRESCAN_PATH_COLUMN_INDEX:I = 0x1

.field private static final FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

.field private static final ID3_GENRES:[Ljava/lang/String;

.field private static final ID_PLAYLISTS_COLUMN_INDEX:I = 0x0

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field public static final IS_SUPPORT_DRM:Z

.field private static final MIME_APPLICATION_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field private static final MTK_REFOCUS_PREFIX:Ljava/lang/String; = "MRefocus"

.field private static final MUSIC_DIR:Ljava/lang/String; = "/music/"

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final NOTIFICATION_SET:Ljava/lang/String; = "notification_set"

.field private static final NS_GDEPTH:Ljava/lang/String; = "http://ns.google.com/photos/1.0/depthmap/"

.field private static final PATH_PLAYLISTS_COLUMN_INDEX:I = 0x1

.field private static final PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field private static final RINGTONE_SET:Ljava/lang/String; = "ringtone_set"

.field private static final SOI:I = 0xffd8

.field private static final SOS:I = 0xffda

.field private static final TAG:Ljava/lang/String; = "MediaScanner"

.field private static final XMP_EXT_MAIN_HEADER1:Ljava/lang/String; = "http://ns.adobe.com/xmp/extension/"

.field private static final XMP_HEADER_START:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/\u0000"

.field private static mMediaPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mNoMediaPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAudioUri:Landroid/net/Uri;

.field private final mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mCaseInsensitivePaths:Z

.field private final mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

.field private mContext:Landroid/content/Context;

.field private mContext1:I

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultAlarmSet:Z

.field private mDefaultMmsFilename:Ljava/lang/String;

.field private mDefaultMmsFilename_sim2:Ljava/lang/String;

.field private mDefaultMmsSet:Z

.field private mDefaultMmsSet_sim2:Z

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationSet:Z

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneFilename_sim2:Ljava/lang/String;

.field private mDefaultRingtoneSet:Z

.field private mDefaultRingtoneSet_sim2:Z

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private final mExternalIsEmulated:Z

.field private final mExternalStoragePath:Ljava/lang/String;

.field private mFilesUri:Landroid/net/Uri;

.field private mFilesUriNoNotify:Landroid/net/Uri;

.field private mImagesUri:Landroid/net/Uri;

.field private mLimitBmpFileSize:J

.field private mLimitGifFileSize:J

.field private mMediaInserter:Landroid/media/MediaInserter;

.field private mMediaProvider:Landroid/content/IContentProvider;

.field private mMtpObjectHandle:I

.field private mNativeContext:J

.field private mOriginalCount:I

.field private mOriginalVideoCount:I

.field private mPackageName:Ljava/lang/String;

.field private mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$PlaylistEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistFilePathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistsUri:Landroid/net/Uri;

.field private mProcessGenres:Z

.field private mProcessPlaylists:Z

.field private mThumbsUri:Landroid/net/Uri;

.field private mVideoThumbsUri:Landroid/net/Uri;

.field private mVideoUri:Landroid/net/Uri;

.field private mWasEmptyPriorToScan:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 138
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Landroid/media/MediaScanner;->native_init()V

    .line 144
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "format"

    aput-object v1, v0, v4

    const-string v1, "date_modified"

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 151
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    .line 160
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "playlist_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    .line 174
    const/16 v0, 0x94

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Blues"

    aput-object v1, v0, v2

    const-string v1, "Classic Rock"

    aput-object v1, v0, v3

    const-string v1, "Country"

    aput-object v1, v0, v4

    const-string v1, "Dance"

    aput-object v1, v0, v5

    const-string v1, "Disco"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "Funk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Grunge"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Hip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Metal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Oldies"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Other"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Ska"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Death Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Pranks"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Euro-Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Ambient"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Trip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz+Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Instrumental"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Acid"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Game"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Sound Clip"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Gospel"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Noise"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "AlternRock"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Space"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Meditative"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Instrumental Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Instrumental Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Ethnic"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Gothic"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Darkwave"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Techno-Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop-Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Eurodance"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Dream"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Southern Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Cult"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Top 40"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Christian Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop/Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Jungle"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Native American"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Cabaret"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "New Wave"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Psychadelic"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Rave"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Showtunes"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Trailer"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Lo-Fi"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Tribal"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Acid Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Acid Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Polka"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Retro"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Musical"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock & Roll"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Hard Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Folk-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "National Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Swing"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Fast Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Bebob"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Revival"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Celtic"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Bluegrass"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Avantgarde"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Gothic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Progressive Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Psychedelic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Symphonic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Slow Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Big Band"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Chorus"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Acoustic"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Humour"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Speech"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Chanson"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Opera"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Chamber Music"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Sonata"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Symphony"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Booty Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Primus"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Porn Groove"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Satire"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Slow Jam"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Club"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Tango"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Samba"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Folklore"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Power Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Rhythmic Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Freestyle"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Duet"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Punk Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Drum Solo"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "A capella"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Euro-House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance Hall"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Goa"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Drum & Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Club-House"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "Hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Terror"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "Britpop"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "Polsk Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Beat"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Christian Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Heavy Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Black Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Crossover"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Contemporary Christian"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Christian Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Merengue"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Salsa"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Thrash Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Anime"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "JPop"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Synthpop"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    .line 427
    const-string/jumbo v0, "ro.mtk_oma_drm_support"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/media/MediaScanner;->IS_SUPPORT_DRM:Z

    .line 1868
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    .line 1869
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 391
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v1, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 420
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .line 426
    iput-object v3, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 434
    iput-wide v4, p0, Landroid/media/MediaScanner;->mLimitBmpFileSize:J

    .line 435
    iput-wide v4, p0, Landroid/media/MediaScanner;->mLimitGifFileSize:J

    .line 479
    new-instance v1, Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-direct {v1, p0, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V

    iput-object v1, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    .line 2372
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/MediaScanner;->mPlaylistFilePathList:Ljava/util/ArrayList;

    .line 438
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_setup()V

    .line 439
    iput-object p1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    .line 440
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    .line 441
    iget-object v1, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 442
    iget-object v1, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 444
    invoke-direct {p0}, Landroid/media/MediaScanner;->setDefaultRingtoneFileNames()V

    .line 446
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    .line 447
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/MediaScanner;->mExternalIsEmulated:Z

    .line 451
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 452
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    const-wide/32 v2, 0x600000

    iput-wide v2, p0, Landroid/media/MediaScanner;->mLimitBmpFileSize:J

    .line 454
    const-wide/32 v2, 0xa00000

    iput-wide v2, p0, Landroid/media/MediaScanner;->mLimitGifFileSize:J

    .line 459
    :goto_0
    return-void

    .line 456
    :cond_0
    const-wide/32 v2, 0x3400000

    iput-wide v2, p0, Landroid/media/MediaScanner;->mLimitBmpFileSize:J

    .line 457
    const-wide/32 v2, 0x1400000

    iput-wide v2, p0, Landroid/media/MediaScanner;->mLimitGifFileSize:J

    goto :goto_0
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/media/MediaScannerClient;

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    return v0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/media/MediaScanner;)J
    .locals 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-wide v0, p0, Landroid/media/MediaScanner;->mLimitBmpFileSize:J

    return-wide v0
.end method

.method static synthetic access$1400(Landroid/media/MediaScanner;)J
    .locals 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-wide v0, p0, Landroid/media/MediaScanner;->mLimitGifFileSize:J

    return-wide v0
.end method

.method static synthetic access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaScanner;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->isValueslessMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    return v0
.end method

.method static synthetic access$2200(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return v0
.end method

.method static synthetic access$2202(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return p1
.end method

.method static synthetic access$2300(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return v0
.end method

.method static synthetic access$2402(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return p1
.end method

.method static synthetic access$2500(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return v0
.end method

.method static synthetic access$2602(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return p1
.end method

.method static synthetic access$2700(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/media/MediaScanner;->isDrmEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultMmsSet:Z

    return v0
.end method

.method static synthetic access$3002(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultMmsSet:Z

    return p1
.end method

.method static synthetic access$3100(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultMmsFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultMmsSet_sim2:Z

    return v0
.end method

.method static synthetic access$3202(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultMmsSet_sim2:Z

    return p1
.end method

.method static synthetic access$3300(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultMmsFilename_sim2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet_sim2:Z

    return v0
.end method

.method static synthetic access$3402(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet_sim2:Z

    return p1
.end method

.method static synthetic access$3500(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename_sim2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method static synthetic access$402(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Landroid/drm/DrmManagerClient;

    .prologue
    .line 135
    iput-object p1, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object p1
.end method

.method static synthetic access$500(Landroid/media/MediaScanner;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    return v0
.end method

.method static synthetic access$700(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlaylistFilePathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/MediaScanner;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 135
    iget v0, p0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    return v0
.end method

.method private cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2069
    new-instance v1, Landroid/media/MediaScanner$PlaylistEntry;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Landroid/media/MediaScanner$PlaylistEntry;-><init>(Landroid/media/MediaScanner$1;)V

    .line 2071
    .local v1, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2072
    .local v2, "entryLength":I
    :goto_0
    if-lez v2, :cond_0

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2075
    :cond_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 2090
    :goto_1
    return-void

    .line 2076
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2080
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2081
    .local v0, "ch1":C
    const/16 v5, 0x2f

    if-eq v0, v5, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_4

    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_4

    :cond_3
    move v3, v4

    .line 2084
    .local v3, "fullPath":Z
    :cond_4
    if-nez v3, :cond_5

    .line 2085
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2086
    :cond_5
    iput-object p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    .line 2089
    iget-object v4, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static checkIfMainXmpInApp1(Ljava/io/RandomAccessFile;Landroid/media/MediaScanner$Section;)Landroid/media/MediaScanner$Section;
    .locals 10
    .param p0, "raf"    # Ljava/io/RandomAccessFile;
    .param p1, "section"    # Landroid/media/MediaScanner$Section;

    .prologue
    const/4 v4, 0x0

    .line 2695
    if-nez p1, :cond_1

    .line 2696
    const-string v5, "MediaScanner"

    const-string v6, "<checkIfMainXmpInApp1> section is null!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v4

    .line 2717
    .end local p1    # "section":Landroid/media/MediaScanner$Section;
    :cond_0
    :goto_0
    return-object p1

    .line 2699
    .restart local p1    # "section":Landroid/media/MediaScanner$Section;
    :cond_1
    const/4 v0, 0x0

    .line 2700
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 2702
    .local v2, "str":Ljava/lang/String;
    :try_start_0
    iget v5, p1, Landroid/media/MediaScanner$Section;->mMarker:I

    const v6, 0xffe1

    if-ne v5, v6, :cond_0

    .line 2703
    iget-wide v6, p1, Landroid/media/MediaScanner$Section;->mOffset:J

    const-wide/16 v8, 0x4

    add-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2704
    const-string v5, "http://ns.adobe.com/xmp/extension/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-array v0, v5, [B

    .line 2705
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {p0, v0, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 2706
    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v3, v0, v5, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2707
    .end local v2    # "str":Ljava/lang/String;
    .local v3, "str":Ljava/lang/String;
    :try_start_1
    const-string v5, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2708
    const/4 v5, 0x1

    iput-boolean v5, p1, Landroid/media/MediaScanner$Section;->mIsXmpMain:Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    move-object v2, v3

    .end local v3    # "str":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_0

    .line 2712
    :catch_0
    move-exception v1

    .line 2713
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    const-string v5, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<checkIfMainXmpInApp1> UnsupportedEncodingException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v4

    .line 2714
    goto :goto_0

    .line 2715
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 2716
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    const-string v5, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<checkIfMainXmpInApp1> IOException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v4

    .line 2717
    goto :goto_0

    .line 2715
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "str":Ljava/lang/String;
    .restart local v3    # "str":Ljava/lang/String;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "str":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_2

    .line 2712
    .end local v2    # "str":Ljava/lang/String;
    .restart local v3    # "str":Ljava/lang/String;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3    # "str":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_1
.end method

.method public static clearMediaPathCache(ZZ)V
    .locals 2
    .param p0, "clearMediaPaths"    # Z
    .param p1, "clearNoMediaPaths"    # Z

    .prologue
    .line 1873
    const-class v1, Landroid/media/MediaScanner;

    monitor-enter v1

    .line 1874
    if-eqz p0, :cond_0

    .line 1875
    :try_start_0
    sget-object v0, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1877
    :cond_0
    if-eqz p1, :cond_1

    .line 1878
    sget-object v0, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1880
    :cond_1
    monitor-exit v1

    .line 1881
    return-void

    .line 1880
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "directories"    # [Ljava/lang/String;

    .prologue
    .line 1580
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1581
    aget-object v0, p2, v1

    .line 1582
    .local v0, "directory":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1583
    const/4 v2, 0x1

    .line 1586
    .end local v0    # "directory":Ljava/lang/String;
    :goto_1
    return v2

    .line 1580
    .restart local v0    # "directory":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1586
    .end local v0    # "directory":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 4
    .param p1, "volumeName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1743
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1745
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    .line 1746
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    .line 1747
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    .line 1748
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    .line 1749
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mVideoThumbsUri:Landroid/net/Uri;

    .line 1750
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    .line 1751
    iget-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "nonotify"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    .line 1753
    const-string v0, "internal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1755
    iput-boolean v3, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    .line 1756
    iput-boolean v3, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    .line 1757
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 1759
    iput-boolean v3, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    .line 1761
    :cond_0
    return-void
.end method

.method private isDrmEnabled()Z
    .locals 2

    .prologue
    .line 482
    const-string v1, "drm.service.enabled"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNoMediaFile(Ljava/lang/String;)Z
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0xa

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1835
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1836
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    .line 1865
    :cond_0
    :goto_0
    return v1

    .line 1841
    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 1842
    .local v7, "lastSlash":I
    if-ltz v7, :cond_3

    add-int/lit8 v0, v7, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1844
    add-int/lit8 v0, v7, 0x1

    const-string v2, "._"

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v4, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1851
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x4

    const-string v3, ".jpg"

    const/4 v5, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1852
    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArt_{"

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArt."

    const/16 v5, 0x9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1856
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v7

    add-int/lit8 v8, v0, -0x1

    .line 1857
    .local v8, "length":I
    const/16 v0, 0x11

    if-ne v8, v0, :cond_2

    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArtSmall"

    const/16 v5, 0xd

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    if-ne v8, v9, :cond_3

    add-int/lit8 v2, v7, 0x1

    const-string v3, "Folder"

    const/4 v5, 0x6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .end local v8    # "length":I
    :cond_3
    move v1, v4

    .line 1865
    goto :goto_0
.end method

.method public static isNoMediaPath(Ljava/lang/String;)Z
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x2f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1884
    if-nez p0, :cond_1

    .line 1927
    :cond_0
    :goto_0
    return v5

    .line 1888
    :cond_1
    const-string v7, "/."

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_2

    move v5, v6

    .line 1889
    goto :goto_0

    .line 1892
    :cond_2
    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1893
    .local v1, "firstSlash":I
    if-lez v1, :cond_0

    .line 1896
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1898
    .local v3, "parent":Ljava/lang/String;
    const-class v7, Landroid/media/MediaScanner;

    monitor-enter v7

    .line 1899
    :try_start_0
    sget-object v5, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1900
    monitor-exit v7

    move v5, v6

    goto :goto_0

    .line 1901
    :cond_3
    sget-object v5, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1904
    const/4 v2, 0x1

    .line 1905
    .local v2, "offset":I
    :goto_1
    if-ltz v2, :cond_6

    .line 1906
    const/16 v5, 0x2f

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 1907
    .local v4, "slashIndex":I
    if-le v4, v2, :cond_4

    .line 1908
    add-int/lit8 v4, v4, 0x1

    .line 1909
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ".nomedia"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1910
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1912
    sget-object v5, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    const-string v8, ""

    invoke-virtual {v5, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1913
    monitor-exit v7

    move v5, v6

    goto :goto_0

    .line 1917
    .end local v0    # "file":Ljava/io/File;
    :cond_4
    if-ne v4, v2, :cond_5

    .line 1918
    add-int/lit8 v4, v4, 0x1

    .line 1921
    :cond_5
    move v2, v4

    .line 1922
    goto :goto_1

    .line 1923
    .end local v4    # "slashIndex":I
    :cond_6
    sget-object v5, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    const-string v6, ""

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1925
    .end local v2    # "offset":I
    :cond_7
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1927
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v5

    goto :goto_0

    .line 1925
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private static isStereo(Landroid/media/MediaScanner$Section;Ljava/io/RandomAccessFile;)Z
    .locals 10
    .param p0, "section"    # Landroid/media/MediaScanner$Section;
    .param p1, "rafIn"    # Ljava/io/RandomAccessFile;

    .prologue
    const/4 v4, 0x0

    .line 2624
    :try_start_0
    iget-boolean v5, p0, Landroid/media/MediaScanner$Section;->mIsXmpMain:Z

    if-eqz v5, :cond_0

    .line 2625
    iget-wide v6, p0, Landroid/media/MediaScanner$Section;->mOffset:J

    const-wide/16 v8, 0x2

    add-long/2addr v6, v8

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2626
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v5

    add-int/lit8 v1, v5, -0x2

    .line 2627
    .local v1, "len":I
    const-string v5, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 2628
    const-string v5, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, v1, v5

    new-array v2, v5, [B

    .line 2629
    .local v2, "xmpBuffer":[B
    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {p1, v2, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 2630
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 2631
    .local v3, "xmpContent":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 2632
    const-string v5, "MediaScanner"

    const-string v6, "<isStereo> xmpContent is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    .end local v1    # "len":I
    .end local v2    # "xmpBuffer":[B
    .end local v3    # "xmpContent":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 2635
    .restart local v1    # "len":I
    .restart local v2    # "xmpBuffer":[B
    .restart local v3    # "xmpContent":Ljava/lang/String;
    :cond_1
    const-string v5, "MRefocus"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 2636
    const/4 v4, 0x1

    goto :goto_0

    .line 2640
    .end local v1    # "len":I
    .end local v2    # "xmpBuffer":[B
    .end local v3    # "xmpContent":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2641
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "MediaScanner"

    const-string v6, "<isStereo> IOException:"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isStereoPhoto(Ljava/lang/String;)Z
    .locals 14
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 2573
    if-nez p0, :cond_0

    .line 2574
    const-string v10, "MediaScanner"

    const-string v11, "<isStereoPhoto> filePath is null!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    :goto_0
    return v7

    .line 2578
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2579
    .local v6, "srcFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 2580
    const-string v10, "MediaScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<isStereoPhoto> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not exists!!!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2584
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2585
    .local v8, "start":J
    invoke-static {p0}, Landroid/media/MediaScanner;->parseApp1Info(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2586
    .local v5, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaScanner$Section;>;"
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gez v10, :cond_3

    .line 2587
    :cond_2
    const-string v10, "MediaScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<isStereoPhoto> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", no app1 sections"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2590
    :cond_3
    const/4 v2, 0x0

    .line 2592
    .local v2, "rafIn":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v10, "r"

    invoke-direct {v3, p0, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2593
    .end local v2    # "rafIn":Ljava/io/RandomAccessFile;
    .local v3, "rafIn":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_6

    .line 2594
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaScanner$Section;

    .line 2595
    .local v4, "section":Landroid/media/MediaScanner$Section;
    invoke-static {v4, v3}, Landroid/media/MediaScanner;->isStereo(Landroid/media/MediaScanner$Section;Ljava/io/RandomAccessFile;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2596
    const-string v10, "MediaScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<isStereoPhoto> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is stereo photo"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2597
    const/4 v7, 0x1

    .line 2610
    if-eqz v3, :cond_4

    .line 2611
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2612
    const/4 v2, 0x0

    .line 2617
    .end local v3    # "rafIn":Ljava/io/RandomAccessFile;
    .restart local v2    # "rafIn":Ljava/io/RandomAccessFile;
    :goto_2
    const-string v10, "MediaScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<isStereoPhoto> <performance> costs(ms): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2614
    .end local v2    # "rafIn":Ljava/io/RandomAccessFile;
    .restart local v3    # "rafIn":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    .line 2615
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "MediaScanner"

    const-string v11, "<isStereoPhoto> IOException:"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    move-object v2, v3

    .end local v3    # "rafIn":Ljava/io/RandomAccessFile;
    .restart local v2    # "rafIn":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 2593
    .end local v2    # "rafIn":Ljava/io/RandomAccessFile;
    .restart local v3    # "rafIn":Ljava/io/RandomAccessFile;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2600
    .end local v4    # "section":Landroid/media/MediaScanner$Section;
    :cond_6
    :try_start_3
    const-string v10, "MediaScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<isStereoPhoto> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not stereo photo"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2610
    if-eqz v3, :cond_7

    .line 2611
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2612
    const/4 v2, 0x0

    .line 2617
    .end local v3    # "rafIn":Ljava/io/RandomAccessFile;
    .restart local v2    # "rafIn":Ljava/io/RandomAccessFile;
    :goto_3
    const-string v10, "MediaScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<isStereoPhoto> <performance> costs(ms): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2614
    .end local v2    # "rafIn":Ljava/io/RandomAccessFile;
    .restart local v3    # "rafIn":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    .line 2615
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v10, "MediaScanner"

    const-string v11, "<isStereoPhoto> IOException:"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    move-object v2, v3

    .end local v3    # "rafIn":Ljava/io/RandomAccessFile;
    .restart local v2    # "rafIn":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 2602
    .end local v1    # "i":I
    :catch_2
    move-exception v0

    .line 2603
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    const-string v10, "MediaScanner"

    const-string v11, "<isStereoPhoto> FileNotFoundException:"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2610
    if-eqz v2, :cond_8

    .line 2611
    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2612
    const/4 v2, 0x0

    .line 2617
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_8
    :goto_5
    const-string v10, "MediaScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<isStereoPhoto> <performance> costs(ms): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2614
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 2615
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "MediaScanner"

    const-string v11, "<isStereoPhoto> IOException:"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 2605
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 2606
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_6
    :try_start_7
    const-string v10, "MediaScanner"

    const-string v11, "<isStereoPhoto> IllegalArgumentException:"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2610
    if-eqz v2, :cond_9

    .line 2611
    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 2612
    const/4 v2, 0x0

    .line 2617
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_9
    :goto_7
    const-string v10, "MediaScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<isStereoPhoto> <performance> costs(ms): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2614
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v0

    .line 2615
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "MediaScanner"

    const-string v11, "<isStereoPhoto> IOException:"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 2609
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 2610
    :goto_8
    if-eqz v2, :cond_a

    .line 2611
    :try_start_9
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 2612
    const/4 v2, 0x0

    .line 2617
    :cond_a
    :goto_9
    const-string v10, "MediaScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<isStereoPhoto> <performance> costs(ms): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v7

    .line 2614
    :catch_6
    move-exception v0

    .line 2615
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v10, "MediaScanner"

    const-string v11, "<isStereoPhoto> IOException:"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 2609
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "rafIn":Ljava/io/RandomAccessFile;
    .restart local v1    # "i":I
    .restart local v3    # "rafIn":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "rafIn":Ljava/io/RandomAccessFile;
    .restart local v2    # "rafIn":Ljava/io/RandomAccessFile;
    goto :goto_8

    .line 2605
    .end local v2    # "rafIn":Ljava/io/RandomAccessFile;
    .restart local v3    # "rafIn":Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "rafIn":Ljava/io/RandomAccessFile;
    .restart local v2    # "rafIn":Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 2602
    .end local v2    # "rafIn":Ljava/io/RandomAccessFile;
    .restart local v3    # "rafIn":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3    # "rafIn":Ljava/io/RandomAccessFile;
    .restart local v2    # "rafIn":Ljava/io/RandomAccessFile;
    goto/16 :goto_4
.end method

.method private isValueslessMimeType(Ljava/lang/String;)Z
    .locals 4
    .param p1, "mimetype"    # Ljava/lang/String;

    .prologue
    .line 2355
    const/4 v0, 0x0

    .line 2356
    .local v0, "valueless":Z
    const-string v1, "application/octet-stream"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2357
    const/4 v0, 0x1

    .line 2358
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValueslessMimeType: mimetype="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    :cond_0
    return v0
.end method

.method private matchEntries(JLjava/lang/String;)Z
    .locals 7
    .param p1, "rowId"    # J
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    const v6, 0x7fffffff

    .line 2045
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2046
    .local v3, "len":I
    const/4 v0, 0x1

    .line 2047
    .local v0, "done":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 2048
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaScanner$PlaylistEntry;

    .line 2049
    .local v1, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    iget v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-ne v5, v6, :cond_1

    .line 2047
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2052
    :cond_1
    const/4 v0, 0x0

    .line 2053
    iget-object v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2054
    iput-wide p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 2055
    iput v6, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    goto :goto_1

    .line 2059
    :cond_2
    iget-object v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-direct {p0, p3, v5}, Landroid/media/MediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2060
    .local v4, "matchLength":I
    iget v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-le v4, v5, :cond_0

    .line 2061
    iput-wide p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 2062
    iput v4, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    goto :goto_1

    .line 2065
    .end local v1    # "entry":Landroid/media/MediaScanner$PlaylistEntry;
    .end local v4    # "matchLength":I
    :cond_3
    return v0
.end method

.method private matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "path1"    # Ljava/lang/String;
    .param p2, "path2"    # Ljava/lang/String;

    .prologue
    .line 2018
    const/4 v10, 0x0

    .line 2019
    .local v10, "result":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 2020
    .local v8, "end1":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    .line 2022
    .local v9, "end2":I
    :goto_0
    if-lez v8, :cond_0

    if-lez v9, :cond_0

    .line 2023
    const/16 v0, 0x2f

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    .line 2024
    .local v11, "slash1":I
    const/16 v0, 0x2f

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    .line 2025
    .local v12, "slash2":I
    const/16 v0, 0x5c

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 2026
    .local v6, "backSlash1":I
    const/16 v0, 0x5c

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    .line 2027
    .local v7, "backSlash2":I
    if-le v11, v6, :cond_1

    move v2, v11

    .line 2028
    .local v2, "start1":I
    :goto_1
    if-le v12, v7, :cond_2

    move v4, v12

    .line 2029
    .local v4, "start2":I
    :goto_2
    if-gez v2, :cond_3

    const/4 v2, 0x0

    .line 2030
    :goto_3
    if-gez v4, :cond_4

    const/4 v4, 0x0

    .line 2031
    :goto_4
    sub-int v5, v8, v2

    .line 2032
    .local v5, "length":I
    sub-int v0, v9, v4

    if-eq v0, v5, :cond_5

    .line 2040
    .end local v2    # "start1":I
    .end local v4    # "start2":I
    .end local v5    # "length":I
    .end local v6    # "backSlash1":I
    .end local v7    # "backSlash2":I
    .end local v11    # "slash1":I
    .end local v12    # "slash2":I
    :cond_0
    return v10

    .restart local v6    # "backSlash1":I
    .restart local v7    # "backSlash2":I
    .restart local v11    # "slash1":I
    .restart local v12    # "slash2":I
    :cond_1
    move v2, v6

    .line 2027
    goto :goto_1

    .restart local v2    # "start1":I
    :cond_2
    move v4, v7

    .line 2028
    goto :goto_2

    .line 2029
    .restart local v4    # "start2":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2030
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2033
    .restart local v5    # "length":I
    :cond_5
    const/4 v1, 0x1

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2034
    add-int/lit8 v10, v10, 0x1

    .line 2035
    add-int/lit8 v8, v2, -0x1

    .line 2036
    add-int/lit8 v9, v4, -0x1

    .line 2038
    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup()V
.end method

.method private static parseApp1Info(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 18
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$Section;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2647
    const/4 v7, 0x0

    .line 2649
    .local v7, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string/jumbo v14, "r"

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2650
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .local v10, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v13

    .line 2651
    .local v13, "value":I
    const v14, 0xffd8

    if-eq v13, v14, :cond_2

    .line 2652
    const-string v14, "MediaScanner"

    const-string v15, "<parseApp1Info> error, find no SOI"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2684
    if-eqz v10, :cond_1

    .line 2685
    :try_start_2
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2686
    const/4 v7, 0x0

    .line 2690
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v13    # "value":I
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return-object v12

    .line 2688
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v13    # "value":I
    :catch_0
    move-exception v4

    .line 2689
    .local v4, "e":Ljava/io/IOException;
    const-string v14, "MediaScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<parseApp1Info> IOException, path "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    move-object v7, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 2655
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :cond_2
    const/4 v6, -0x1

    .line 2656
    .local v6, "marker":I
    const-wide/16 v8, -0x1

    .line 2657
    .local v8, "offset":J
    const/4 v5, -0x1

    .line 2658
    .local v5, "length":I
    :try_start_3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2660
    .local v12, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaScanner$Section;>;"
    :goto_2
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_3

    const v14, 0xffda

    if-eq v13, v14, :cond_3

    .line 2661
    move v6, v13

    .line 2662
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v14

    const-wide/16 v16, 0x2

    sub-long v8, v14, v16

    .line 2663
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v5

    .line 2664
    const v14, 0xffe1

    if-ne v13, v14, :cond_5

    .line 2665
    new-instance v11, Landroid/media/MediaScanner$Section;

    invoke-direct {v11, v6, v8, v9, v5}, Landroid/media/MediaScanner$Section;-><init>(IJI)V

    .line 2667
    .local v11, "section":Landroid/media/MediaScanner$Section;
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 2668
    .local v2, "currentPos":J
    invoke-static {v10, v11}, Landroid/media/MediaScanner;->checkIfMainXmpInApp1(Ljava/io/RandomAccessFile;Landroid/media/MediaScanner$Section;)Landroid/media/MediaScanner$Section;

    move-result-object v11

    .line 2669
    if-eqz v11, :cond_4

    iget-boolean v14, v11, Landroid/media/MediaScanner$Section;->mIsXmpMain:Z

    if-eqz v14, :cond_4

    .line 2670
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2684
    .end local v2    # "currentPos":J
    .end local v11    # "section":Landroid/media/MediaScanner$Section;
    :cond_3
    if-eqz v10, :cond_1

    .line 2685
    :try_start_4
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2686
    const/4 v7, 0x0

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 2673
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "currentPos":J
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "section":Landroid/media/MediaScanner$Section;
    :cond_4
    :try_start_5
    invoke-virtual {v10, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2675
    .end local v2    # "currentPos":J
    .end local v11    # "section":Landroid/media/MediaScanner$Section;
    :cond_5
    add-int/lit8 v14, v5, -0x2

    invoke-virtual {v10, v14}, Ljava/io/RandomAccessFile;->skipBytes(I)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 2679
    .end local v5    # "length":I
    .end local v6    # "marker":I
    .end local v8    # "offset":J
    .end local v12    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaScanner$Section;>;"
    .end local v13    # "value":I
    :catch_1
    move-exception v4

    move-object v7, v10

    .line 2680
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "e":Ljava/io/IOException;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :goto_3
    :try_start_6
    const-string v14, "MediaScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<parseApp1Info> IOException, path "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2681
    const/4 v12, 0x0

    .line 2684
    if-eqz v7, :cond_0

    .line 2685
    :try_start_7
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 2686
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2688
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "length":I
    .restart local v6    # "marker":I
    .restart local v8    # "offset":J
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v12    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaScanner$Section;>;"
    .restart local v13    # "value":I
    :catch_2
    move-exception v4

    .line 2689
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v14, "MediaScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<parseApp1Info> IOException, path "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2688
    .end local v5    # "length":I
    .end local v6    # "marker":I
    .end local v8    # "offset":J
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v12    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaScanner$Section;>;"
    .end local v13    # "value":I
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v4

    .line 2689
    const-string v14, "MediaScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<parseApp1Info> IOException, path "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2683
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 2684
    :goto_4
    if-eqz v7, :cond_6

    .line 2685
    :try_start_8
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 2686
    const/4 v7, 0x0

    .line 2690
    :cond_6
    :goto_5
    throw v14

    .line 2688
    :catch_4
    move-exception v4

    .line 2689
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v15, "MediaScanner"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "<parseApp1Info> IOException, path "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 2683
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v14

    move-object v7, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 2679
    :catch_5
    move-exception v4

    goto/16 :goto_3
.end method

.method private postscan([Ljava/lang/String;)V
    .locals 3
    .param p1, "directories"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1720
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    if-eqz v0, :cond_0

    .line 1721
    invoke-direct {p0}, Landroid/media/MediaScanner;->processPlayLists()V

    .line 1724
    :cond_0
    iget v0, p0, Landroid/media/MediaScanner;->mOriginalCount:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/media/MediaScanner;->mOriginalVideoCount:I

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1726
    invoke-direct {p0}, Landroid/media/MediaScanner;->pruneDeadThumbnailFiles()V

    .line 1730
    :cond_2
    iput-object v2, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1731
    iput-object v2, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1732
    return-void
.end method

.method private prescan(Ljava/lang/String;Z)V
    .locals 36
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "prescanFiles"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1430
    const-string v4, "MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "prescan>>> filePath="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ",prescanFiles="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    const/16 v20, 0x0

    .line 1432
    .local v20, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 1433
    .local v8, "where":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1435
    .local v9, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    if-nez v4, :cond_8

    .line 1436
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1441
    :goto_0
    if-eqz p1, :cond_9

    .line 1443
    const-string v8, "_id>? AND _data=?"

    .line 1445
    const/4 v4, 0x2

    new-array v9, v4, [Ljava/lang/String;

    .end local v9    # "selectionArgs":[Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, ""

    aput-object v5, v9, v4

    const/4 v4, 0x1

    aput-object p1, v9, v4

    .line 1455
    .restart local v9    # "selectionArgs":[Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v19

    .line 1456
    .local v19, "builder":Landroid/net/Uri$Builder;
    const-string v4, "deletedata"

    const-string v5, "false"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1457
    new-instance v21, Landroid/media/MediaScanner$MediaBulkDeleter;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5, v7}, Landroid/media/MediaScanner$MediaBulkDeleter;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;Landroid/net/Uri;)V

    .line 1461
    .local v21, "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    const/16 v18, 0x0

    .line 1462
    .local v18, "audioCount":I
    const-wide/high16 v26, -0x8000000000000000L

    .line 1466
    .local v26, "lastId":J
    if-eqz p2, :cond_2

    .line 1471
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "limit"

    const-string v7, "1000"

    invoke-virtual {v4, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 1472
    .local v6, "limitUri":Landroid/net/Uri;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 1475
    :cond_0
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    .line 1476
    if-eqz v20, :cond_1

    .line 1477
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1478
    const/16 v20, 0x0

    .line 1480
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    sget-object v7, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string v10, "_id"

    const/4 v11, 0x0

    invoke-interface/range {v4 .. v11}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    .line 1482
    if-nez v20, :cond_a

    .line 1534
    .end local v6    # "limitUri":Landroid/net/Uri;
    :cond_2
    if-eqz v20, :cond_3

    .line 1535
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1537
    :cond_3
    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1542
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1543
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    sget-object v13, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v10 .. v17}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v20

    .line 1544
    if-eqz v20, :cond_4

    .line 1545
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1546
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1548
    const/16 v20, 0x0

    .line 1550
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MediaScanner;->mOriginalVideoCount:I

    .line 1551
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    sget-object v13, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v10 .. v17}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v20

    .line 1552
    if-eqz v20, :cond_5

    .line 1553
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MediaScanner;->mOriginalVideoCount:I

    .line 1554
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1556
    const/16 v20, 0x0

    .line 1559
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    sget-object v13, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v10 .. v17}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v20

    .line 1560
    if-eqz v20, :cond_6

    .line 1561
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v18

    .line 1562
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1564
    const/16 v20, 0x0

    .line 1568
    :cond_6
    if-eqz v20, :cond_7

    .line 1569
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1575
    :cond_7
    const-string v4, "MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "prescan<<< imageCount="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ",videoCount="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Landroid/media/MediaScanner;->mOriginalVideoCount:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", audioCount="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", lastId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ",isEmpty="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    return-void

    .line 1438
    .end local v18    # "audioCount":I
    .end local v19    # "builder":Landroid/net/Uri$Builder;
    .end local v21    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .end local v26    # "lastId":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1447
    :cond_9
    const-string v8, "_id>?"

    .line 1448
    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/String;

    .end local v9    # "selectionArgs":[Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, ""

    aput-object v5, v9, v4

    .restart local v9    # "selectionArgs":[Ljava/lang/String;
    goto/16 :goto_1

    .line 1486
    .restart local v6    # "limitUri":Landroid/net/Uri;
    .restart local v18    # "audioCount":I
    .restart local v19    # "builder":Landroid/net/Uri$Builder;
    .restart local v21    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v26    # "lastId":J
    :cond_a
    :try_start_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v31

    .line 1488
    .local v31, "num":I
    if-eqz v31, :cond_2

    .line 1491
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 1492
    :cond_b
    :goto_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1493
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 1494
    .local v34, "rowId":J
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 1495
    .local v33, "path":Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 1496
    .local v25, "format":I
    const/4 v4, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 1497
    .local v28, "lastModified":J
    move-wide/from16 v26, v34

    .line 1502
    if-eqz v33, :cond_b

    const-string v4, "/"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_b

    .line 1503
    const/16 v23, 0x0

    .line 1505
    .local v23, "exists":Z
    :try_start_3
    sget v4, Landroid/system/OsConstants;->F_OK:I

    move-object/from16 v0, v33

    invoke-static {v0, v4}, Landroid/system/Os;->access(Ljava/lang/String;I)Z
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v23

    .line 1510
    :goto_3
    if-nez v23, :cond_b

    :try_start_4
    invoke-static/range {v25 .. v25}, Landroid/mtp/MtpConstants;->isAbstractObject(I)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1515
    invoke-static/range {v33 .. v33}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v30

    .line 1516
    .local v30, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v30, :cond_d

    const/16 v24, 0x0

    .line 1518
    .local v24, "fileType":I
    :goto_4
    invoke-static/range {v24 .. v24}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1519
    move-object/from16 v0, v21

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$MediaBulkDeleter;->delete(J)V

    .line 1520
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/.nomedia"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1521
    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1522
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v33

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v32

    .line 1523
    .local v32, "parent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const-string/jumbo v7, "unhide"

    const/4 v10, 0x0

    move-object/from16 v0, v32

    invoke-interface {v4, v5, v7, v0, v10}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 1534
    .end local v6    # "limitUri":Landroid/net/Uri;
    .end local v23    # "exists":Z
    .end local v24    # "fileType":I
    .end local v25    # "format":I
    .end local v28    # "lastModified":J
    .end local v30    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .end local v31    # "num":I
    .end local v32    # "parent":Ljava/lang/String;
    .end local v33    # "path":Ljava/lang/String;
    .end local v34    # "rowId":J
    :catchall_0
    move-exception v4

    if-eqz v20, :cond_c

    .line 1535
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1537
    :cond_c
    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    throw v4

    .line 1506
    .restart local v6    # "limitUri":Landroid/net/Uri;
    .restart local v23    # "exists":Z
    .restart local v25    # "format":I
    .restart local v28    # "lastModified":J
    .restart local v31    # "num":I
    .restart local v33    # "path":Ljava/lang/String;
    .restart local v34    # "rowId":J
    :catch_0
    move-exception v22

    .line 1508
    .local v22, "e1":Landroid/system/ErrnoException;
    :try_start_5
    const-string v4, "MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "prescan: ErrnoException! path="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1516
    .end local v22    # "e1":Landroid/system/ErrnoException;
    .restart local v30    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_d
    move-object/from16 v0, v30

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v24, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 1568
    .end local v6    # "limitUri":Landroid/net/Uri;
    .end local v23    # "exists":Z
    .end local v25    # "format":I
    .end local v28    # "lastModified":J
    .end local v30    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .end local v31    # "num":I
    .end local v33    # "path":Ljava/lang/String;
    .end local v34    # "rowId":J
    :catchall_1
    move-exception v4

    if-eqz v20, :cond_e

    .line 1569
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v4
.end method

.method private processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    .locals 12
    .param p1, "fileList"    # Landroid/database/Cursor;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "playlistUri"    # Landroid/net/Uri;

    .prologue
    .line 2093
    const/4 v8, -0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2094
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2095
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2096
    .local v6, "rowId":J
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2097
    .local v0, "data":Ljava/lang/String;
    invoke-direct {p0, v6, v7, v0}, Landroid/media/MediaScanner;->matchEntries(JLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2102
    .end local v0    # "data":Ljava/lang/String;
    .end local v6    # "rowId":J
    :cond_1
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2103
    .local v5, "len":I
    const/4 v4, 0x0

    .line 2104
    .local v4, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 2105
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaScanner$PlaylistEntry;

    .line 2106
    .local v2, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    iget v8, v2, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-lez v8, :cond_2

    .line 2108
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 2109
    const-string/jumbo v8, "play_order"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2110
    const-string v8, "audio_id"

    iget-wide v10, v2, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2111
    iget-object v8, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v9, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    invoke-interface {v8, v9, p3, p2}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2112
    add-int/lit8 v4, v4, 0x1

    .line 2104
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2113
    :catch_0
    move-exception v1

    .line 2114
    .local v1, "e":Landroid/os/RemoteException;
    const-string v8, "MediaScanner"

    const-string v9, "RemoteException in MediaScanner.processCachedPlaylist()"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2120
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "entry":Landroid/media/MediaScanner$PlaylistEntry;
    :goto_1
    return-void

    .line 2119
    :cond_3
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method private native processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 2124
    const/4 v3, 0x0

    .line 2126
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2127
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2128
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2130
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 2131
    .local v2, "line":Ljava/lang/String;
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2132
    :goto_0
    if-eqz v2, :cond_1

    .line 2134
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-eq v5, v6, :cond_0

    .line 2135
    invoke-direct {p0, v2, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2140
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .line 2146
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v3, :cond_3

    .line 2147
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2152
    .end local v1    # "f":Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 2148
    .restart local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2149
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2142
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "f":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 2143
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v5, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2146
    if-eqz v3, :cond_3

    .line 2147
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2148
    :catch_2
    move-exception v0

    .line 2149
    const-string v5, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2145
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 2146
    :goto_3
    if-eqz v3, :cond_4

    .line 2147
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2150
    :cond_4
    :goto_4
    throw v5

    .line 2148
    :catch_3
    move-exception v0

    .line 2149
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "MediaScanner"

    const-string v7, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2145
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 2142
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    .locals 20
    .param p1, "entry"    # Landroid/media/MediaScanner$FileEntry;
    .param p2, "fileList"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2252
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 2253
    .local v17, "path":Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2254
    .local v5, "values":Landroid/content/ContentValues;
    const/16 v2, 0x2f

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 2255
    .local v14, "lastSlash":I
    if-gez v14, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad path "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2257
    :cond_0
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v18, v0

    .line 2260
    .local v18, "rowId":J
    const-string/jumbo v2, "name"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2261
    .local v16, "name":Ljava/lang/String;
    if-nez v16, :cond_1

    .line 2262
    const-string/jumbo v2, "title"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2263
    if-nez v16, :cond_1

    .line 2265
    const/16 v2, 0x2e

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 2266
    .local v13, "lastDot":I
    if-gez v13, :cond_3

    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 2271
    .end local v13    # "lastDot":I
    :cond_1
    :goto_0
    const-string/jumbo v2, "name"

    move-object/from16 v0, v16

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    const-string v2, "date_modified"

    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2274
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-nez v2, :cond_4

    .line 2275
    const-string v2, "_data"

    move-object/from16 v0, v17

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2276
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-interface {v2, v3, v6, v5}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 2277
    .local v4, "uri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    .line 2278
    const-string/jumbo v2, "members"

    invoke-static {v4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 2288
    .local v9, "membersUri":Landroid/net/Uri;
    :goto_1
    const/4 v2, 0x0

    add-int/lit8 v3, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2289
    .local v8, "playListDirectory":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v15

    .line 2290
    .local v15, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v15, :cond_5

    const/4 v12, 0x0

    .line 2292
    .local v12, "fileType":I
    :goto_2
    const/16 v2, 0x1f5

    if-ne v12, v2, :cond_6

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move-object v10, v5

    move-object/from16 v11, p2

    .line 2293
    invoke-direct/range {v6 .. v11}, Landroid/media/MediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    .line 2299
    :cond_2
    :goto_3
    return-void

    .line 2266
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v8    # "playListDirectory":Ljava/lang/String;
    .end local v9    # "membersUri":Landroid/net/Uri;
    .end local v12    # "fileType":I
    .end local v15    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .restart local v13    # "lastDot":I
    :cond_3
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 2280
    .end local v13    # "lastDot":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-wide/from16 v0, v18

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 2281
    .restart local v4    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2284
    const-string/jumbo v2, "members"

    invoke-static {v4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 2285
    .restart local v9    # "membersUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v2, v3, v9, v6, v7}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 2290
    .restart local v8    # "playListDirectory":Ljava/lang/String;
    .restart local v15    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_5
    iget v12, v15, Landroid/media/MediaFile$MediaFileType;->fileType:I

    goto :goto_2

    .line 2294
    .restart local v12    # "fileType":I
    :cond_6
    const/16 v2, 0x1f6

    if-ne v12, v2, :cond_7

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move-object v10, v5

    move-object/from16 v11, p2

    .line 2295
    invoke-direct/range {v6 .. v11}, Landroid/media/MediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_3

    .line 2296
    :cond_7
    const/16 v2, 0x1f7

    if-ne v12, v2, :cond_2

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move-object v10, v5

    move-object/from16 v11, p2

    .line 2297
    invoke-direct/range {v6 .. v11}, Landroid/media/MediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_3
.end method

.method private processPlayLists()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2302
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 2303
    .local v11, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaScanner$FileEntry;>;"
    const/4 v10, 0x0

    .line 2307
    .local v10, "fileList":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v3, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v4, "media_type=2"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 2309
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2310
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/MediaScanner$FileEntry;

    .line 2312
    .local v9, "entry":Landroid/media/MediaScanner$FileEntry;
    iget-boolean v0, v9, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-eqz v0, :cond_0

    .line 2313
    invoke-direct {p0, v9, v10}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2316
    .end local v9    # "entry":Landroid/media/MediaScanner$FileEntry;
    :catch_0
    move-exception v8

    .line 2318
    .local v8, "e1":Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "MediaScanner"

    const-string/jumbo v1, "processPlayLists: RemoteException!"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2320
    if-eqz v10, :cond_1

    .line 2321
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2324
    .end local v8    # "e1":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void

    .line 2320
    :cond_2
    if-eqz v10, :cond_1

    .line 2321
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2320
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_3

    .line 2321
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 2156
    const/4 v4, 0x0

    .line 2158
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2159
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2160
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2162
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 2163
    .local v3, "line":Ljava/lang/String;
    iget-object v6, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2164
    :goto_0
    if-eqz v3, :cond_1

    .line 2166
    const-string v6, "File"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2167
    const/16 v6, 0x3d

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2168
    .local v1, "equals":I
    if-lez v1, :cond_0

    .line 2169
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2172
    .end local v1    # "equals":I
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2175
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v5

    .line 2181
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v4, :cond_3

    .line 2182
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2187
    .end local v2    # "f":Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 2183
    .restart local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2184
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "MediaScanner"

    const-string v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2177
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "f":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 2178
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v6, "MediaScanner"

    const-string v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2181
    if-eqz v4, :cond_3

    .line 2182
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2183
    :catch_2
    move-exception v0

    .line 2184
    const-string v6, "MediaScanner"

    const-string v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2180
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 2181
    :goto_3
    if-eqz v4, :cond_4

    .line 2182
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2185
    :cond_4
    :goto_4
    throw v6

    .line 2183
    :catch_3
    move-exception v0

    .line 2184
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "MediaScanner"

    const-string v8, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2180
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 2177
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 2225
    const/4 v2, 0x0

    .line 2227
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2228
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2229
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2231
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v4, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2232
    const-string v4, "UTF-8"

    invoke-static {v4}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v4

    new-instance v5, Landroid/media/MediaScanner$WplHandler;

    invoke-direct {v5, p0, p2, p3, p5}, Landroid/media/MediaScanner$WplHandler;-><init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;Landroid/database/Cursor;)V

    invoke-virtual {v5}, Landroid/media/MediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 2235
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 2243
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_0
    if-eqz v2, :cond_1

    .line 2244
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2249
    .end local v1    # "f":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 2245
    .restart local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2246
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2237
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "f":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 2238
    .local v0, "e":Lorg/xml/sax/SAXException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2243
    if-eqz v2, :cond_1

    .line 2244
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2245
    :catch_2
    move-exception v0

    .line 2246
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2239
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 2240
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2243
    if-eqz v2, :cond_1

    .line 2244
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 2245
    :catch_4
    move-exception v0

    .line 2246
    const-string v4, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2242
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 2243
    :goto_3
    if-eqz v2, :cond_2

    .line 2244
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 2247
    :cond_2
    :goto_4
    throw v4

    .line 2245
    :catch_5
    move-exception v0

    .line 2246
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2242
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 2239
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 2237
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private pruneDeadThumbnailFiles()V
    .locals 25

    .prologue
    .line 1590
    const-string v2, "MediaScanner"

    const-string/jumbo v3, "pruneDeadThumbnailFiles>>>"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 1592
    .local v14, "existingFiles":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/media/MiniThumbFile;->getMiniThumbFileDirectoryPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1594
    .local v11, "directory":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v16

    .line 1595
    .local v16, "files":[Ljava/lang/String;
    if-nez v16, :cond_0

    .line 1596
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1598
    :cond_0
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, v16

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_1

    .line 1599
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v16, v18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1600
    .local v17, "fullPathString":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1598
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 1603
    .end local v17    # "fullPathString":Ljava/lang/String;
    :cond_1
    const/16 v20, 0x0

    .line 1604
    .local v20, "imageThumbCount":I
    const/16 v24, 0x0

    .line 1605
    .local v24, "videoThumbCount":I
    const/4 v10, 0x0

    .line 1608
    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_data"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 1615
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1616
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v20

    .line 1618
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1619
    .restart local v17    # "fullPathString":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1620
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1623
    .end local v17    # "fullPathString":Ljava/lang/String;
    :cond_3
    if-eqz v10, :cond_4

    .line 1624
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1625
    const/4 v10, 0x0

    .line 1628
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mVideoThumbsUri:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_data"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 1635
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1636
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v24

    .line 1638
    :cond_5
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1639
    .restart local v17    # "fullPathString":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1640
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1642
    .end local v17    # "fullPathString":Ljava/lang/String;
    :cond_6
    if-eqz v10, :cond_7

    .line 1643
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1644
    const/4 v10, 0x0

    .line 1647
    :cond_7
    if-gtz v20, :cond_8

    if-lez v24, :cond_b

    .line 1648
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/media/MiniThumbFile;->getMiniThumbFilePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1649
    .local v22, "miniThumbFilePath":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 1650
    .local v21, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_9
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1651
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1652
    .local v23, "path":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1653
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1667
    .end local v21    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v22    # "miniThumbFilePath":Ljava/lang/String;
    .end local v23    # "path":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 1669
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "MediaScanner"

    const-string/jumbo v3, "pruneDeadThumbnailFiles: RemoteException!"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1671
    if-eqz v10, :cond_a

    .line 1672
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1675
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_a
    :goto_2
    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pruneDeadThumbnailFiles<<< for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    return-void

    .line 1658
    :cond_b
    :try_start_2
    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1659
    .local v15, "fileToDelete":Ljava/lang/String;
    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete dead thumbnail file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1661
    :try_start_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 1662
    :catch_1
    move-exception v13

    .line 1664
    .local v13, "ex":Ljava/lang/SecurityException;
    :try_start_4
    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pruneDeadThumbnailFiles: path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1671
    .end local v13    # "ex":Ljava/lang/SecurityException;
    .end local v15    # "fileToDelete":Ljava/lang/String;
    .end local v19    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_c

    .line 1672
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2

    .line 1671
    .restart local v19    # "i$":Ljava/util/Iterator;
    :cond_d
    if-eqz v10, :cond_a

    .line 1672
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private releaseResources()V
    .locals 1

    .prologue
    .line 1736
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 1737
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    .line 1738
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 1740
    :cond_0
    return-void
.end method

.method private setDefaultRingtoneFileNames()V
    .locals 3

    .prologue
    .line 462
    const-string/jumbo v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    .line 464
    const-string/jumbo v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 466
    const-string/jumbo v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 470
    const-string/jumbo v0, "ro.gn.default.ringtone2"

    iget-object v1, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename_sim2:Ljava/lang/String;

    .line 471
    const-string/jumbo v0, "ro.gn.default.mmstone"

    iget-object v1, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultMmsFilename:Ljava/lang/String;

    .line 472
    const-string/jumbo v0, "ro.gn.default.mmstone2"

    iget-object v1, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultMmsFilename_sim2:Ljava/lang/String;

    .line 475
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultRingtoneFileNames: ringtone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",notification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",alarm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void
.end method


# virtual methods
.method public native extractAlbumArt(Ljava/io/FileDescriptor;)[B
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 2348
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2349
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 2350
    return-void
.end method

.method makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;
    .locals 16
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1993
    const/4 v14, 0x0

    .line 1995
    .local v14, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v5, "_data=?"

    .line 1996
    .local v5, "where":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v6, v1

    .line 1997
    .local v6, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    sget-object v4, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v14

    .line 1999
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2000
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2001
    .local v8, "rowId":J
    const/4 v1, 0x2

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 2002
    .local v13, "format":I
    const/4 v1, 0x3

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 2003
    .local v11, "lastModified":J
    new-instance v7, Landroid/media/MediaScanner$FileEntry;

    move-object/from16 v10, p1

    invoke-direct/range {v7 .. v13}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2009
    if-eqz v14, :cond_0

    .line 2010
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2013
    .end local v5    # "where":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "rowId":J
    .end local v11    # "lastModified":J
    .end local v13    # "format":I
    :cond_0
    :goto_0
    return-object v7

    .line 2009
    .restart local v5    # "where":Ljava/lang/String;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    :cond_1
    if-eqz v14, :cond_2

    .line 2010
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2013
    .end local v5    # "where":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 2005
    :catch_0
    move-exception v15

    .line 2007
    .local v15, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeEntryFor: RemoteException! path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2009
    if-eqz v14, :cond_2

    .line 2010
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2009
    .end local v15    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    if-eqz v14, :cond_3

    .line 2010
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public postScanAll(Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2397
    .local p1, "playlistFilePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    if-eqz v3, :cond_3

    .line 2398
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2399
    .local v5, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v2

    .line 2400
    .local v2, "entry":Landroid/media/MediaScanner$FileEntry;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2401
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 2403
    .local v6, "lastModified":J
    if-eqz v2, :cond_6

    iget-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    move-wide/from16 v16, v0

    sub-long v10, v6, v16

    .line 2404
    .local v10, "delta":J
    :goto_1
    const-wide/16 v16, 0x1

    cmp-long v3, v10, v16

    if-gtz v3, :cond_0

    const-wide/16 v16, -0x1

    cmp-long v3, v10, v16

    if-gez v3, :cond_7

    :cond_0
    const/4 v14, 0x1

    .line 2405
    .local v14, "wasModified":Z
    :goto_2
    if-eqz v2, :cond_1

    if-eqz v14, :cond_2

    .line 2406
    :cond_1
    if-eqz v14, :cond_8

    .line 2407
    iput-wide v6, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    .line 2411
    :goto_3
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    .line 2413
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2417
    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "lastModified":J
    .end local v10    # "delta":J
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "wasModified":Z
    :catch_0
    move-exception v9

    .line 2418
    .local v9, "e":Landroid/os/RemoteException;
    const-string v3, "MediaScanner"

    const-string v4, "RemoteException in MediaScanner.scan()"

    invoke-static {v3, v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2421
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaScanner;->mOriginalVideoCount:I

    if-nez v3, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    const-string v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2423
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->pruneDeadThumbnailFiles()V

    .line 2427
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 2428
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 2429
    const-string v3, "MediaScanner"

    const-string/jumbo v4, "postScanAll"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    return-void

    .line 2403
    .restart local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v6    # "lastModified":J
    .restart local v12    # "file":Ljava/io/File;
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_6
    const-wide/16 v10, 0x0

    goto :goto_1

    .line 2404
    .restart local v10    # "delta":J
    :cond_7
    const/4 v14, 0x0

    goto :goto_2

    .line 2409
    .restart local v14    # "wasModified":Z
    :cond_8
    :try_start_1
    new-instance v2, Landroid/media/MediaScanner$FileEntry;

    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    const-wide/16 v3, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .restart local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    goto :goto_3

    .line 2415
    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "lastModified":J
    .end local v10    # "delta":J
    .end local v12    # "file":Ljava/io/File;
    .end local v14    # "wasModified":Z
    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->processPlayLists()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public preScanAll(Ljava/lang/String;)V
    .locals 3
    .param p1, "volume"    # Ljava/lang/String;

    .prologue
    .line 2380
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 2381
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2385
    :goto_0
    return-void

    .line 2382
    :catch_0
    move-exception v0

    .line 2383
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaScanner"

    const-string v2, "RemoteException in MediaScanner.scan()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 2343
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 2344
    return-void
.end method

.method public scanDirectories([Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "directories"    # [Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;

    .prologue
    .line 1765
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1766
    .local v10, "start":J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1767
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1768
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1772
    .local v6, "prescan":J
    new-instance v12, Landroid/media/MediaInserter;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const/16 v15, 0x1f4

    invoke-direct {v12, v13, v14, v15}, Landroid/media/MediaInserter;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1775
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v12, v0

    if-ge v3, v12, :cond_0

    .line 1776
    aget-object v12, p1, v3

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 1775
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1781
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v12}, Landroid/media/MediaInserter;->flushAll()V

    .line 1782
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1785
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1786
    .local v8, "scan":J
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner;->postscan([Ljava/lang/String;)V

    .line 1787
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1790
    .local v4, "end":J
    const-string v12, "MediaScanner"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " prescan time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v6, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "ms\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    const-string v12, "MediaScanner"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    scan time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v8, v6

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "ms\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    const-string v12, "MediaScanner"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "postscan time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v4, v8

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "ms\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    const-string v12, "MediaScanner"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   total time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v4, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "ms\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1804
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1806
    .end local v3    # "i":I
    .end local v4    # "end":J
    .end local v6    # "prescan":J
    .end local v8    # "scan":J
    .end local v10    # "start":J
    :goto_1
    return-void

    .line 1795
    :catch_0
    move-exception v2

    .line 1797
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v12, "MediaScanner"

    const-string v13, "SQLException in MediaScanner.scan()"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1804
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto :goto_1

    .line 1798
    .end local v2    # "e":Landroid/database/SQLException;
    :catch_1
    move-exception v2

    .line 1800
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    :try_start_2
    const-string v12, "MediaScanner"

    const-string v13, "UnsupportedOperationException in MediaScanner.scan()"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1804
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto :goto_1

    .line 1801
    .end local v2    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v2

    .line 1802
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v12, "MediaScanner"

    const-string v13, "RemoteException in MediaScanner.scan()"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1804
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto :goto_1

    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v12

    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    throw v12
.end method

.method public scanFolders(Landroid/os/Handler;[Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 17
    .param p1, "insertHanlder"    # Landroid/os/Handler;
    .param p2, "folders"    # [Ljava/lang/String;
    .param p3, "volume"    # Ljava/lang/String;
    .param p4, "isSingelFile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2446
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 2449
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 2450
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 2457
    :goto_0
    new-instance v3, Landroid/media/MediaInserter;

    const/16 v5, 0x64

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v5}, Landroid/media/MediaInserter;-><init>(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 2460
    move-object/from16 v2, p2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v0, v2

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    aget-object v4, v2, v15

    .line 2461
    .local v4, "path":Ljava/lang/String;
    if-eqz p4, :cond_1

    .line 2462
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2463
    .local v14, "file":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v6, v8, v10

    .line 2464
    .local v6, "lastModifiedSeconds":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    const/4 v5, 0x0

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v10

    const/4 v11, 0x0

    invoke-static {v4}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual/range {v3 .. v12}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    .line 2460
    .end local v6    # "lastModifiedSeconds":J
    .end local v14    # "file":Ljava/io/File;
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2452
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 2475
    :catch_0
    move-exception v13

    .line 2477
    .local v13, "e":Landroid/database/SQLException;
    const-string v3, "MediaScanner"

    const-string v5, "SQLException in MediaScanner.scan()"

    invoke-static {v3, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2486
    .end local v13    # "e":Landroid/database/SQLException;
    :goto_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 2487
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 2489
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPlaylistFilePathList:Ljava/util/ArrayList;

    return-object v3

    .line 2467
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v15    # "i$":I
    .restart local v16    # "len$":I
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 2478
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    :catch_1
    move-exception v13

    .line 2480
    .local v13, "e":Ljava/lang/UnsupportedOperationException;
    const-string v3, "MediaScanner"

    const-string v5, "UnsupportedOperationException in MediaScanner.scan()"

    invoke-static {v3, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 2472
    .end local v13    # "e":Ljava/lang/UnsupportedOperationException;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v15    # "i$":I
    .restart local v16    # "len$":I
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v3}, Landroid/media/MediaInserter;->flushAll()V

    .line 2473
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 2481
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    :catch_2
    move-exception v13

    .line 2482
    .local v13, "e":Landroid/os/RemoteException;
    const-string v3, "MediaScanner"

    const-string v5, "RemoteException in MediaScanner.scan()"

    invoke-static {v3, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public scanFolders([Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 17
    .param p1, "folders"    # [Ljava/lang/String;
    .param p2, "volume"    # Ljava/lang/String;
    .param p3, "isSingelFileOrEmptyFolder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2504
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 2507
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 2508
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 2515
    :goto_0
    new-instance v3, Landroid/media/MediaInserter;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const/16 v9, 0x1f4

    invoke-direct {v3, v5, v8, v9}, Landroid/media/MediaInserter;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 2518
    move-object/from16 v2, p1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v0, v2

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    aget-object v4, v2, v15

    .line 2519
    .local v4, "folder":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2520
    .local v14, "file":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2522
    invoke-virtual {v14}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v6, v8, v10

    .line 2523
    .local v6, "lastModifiedSeconds":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    const/4 v5, 0x0

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v10

    const/4 v11, 0x0

    invoke-static {v4}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual/range {v3 .. v12}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    .line 2527
    .end local v6    # "lastModifiedSeconds":J
    :cond_0
    if-nez p3, :cond_1

    .line 2528
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 2518
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2510
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "folder":Ljava/lang/String;
    .end local v14    # "file":Ljava/io/File;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 2537
    :catch_0
    move-exception v13

    .line 2539
    .local v13, "e":Landroid/database/SQLException;
    const-string v3, "MediaScanner"

    const-string v5, "SQLException in MediaScanner.scan()"

    invoke-static {v3, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2548
    .end local v13    # "e":Landroid/database/SQLException;
    :goto_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 2549
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 2551
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPlaylistFilePathList:Ljava/util/ArrayList;

    return-object v3

    .line 2534
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v15    # "i$":I
    .restart local v16    # "len$":I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v3}, Landroid/media/MediaInserter;->flushAll()V

    .line 2535
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 2540
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    :catch_1
    move-exception v13

    .line 2542
    .local v13, "e":Ljava/lang/UnsupportedOperationException;
    const-string v3, "MediaScanner"

    const-string v5, "UnsupportedOperationException in MediaScanner.scan()"

    invoke-static {v3, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2543
    .end local v13    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v13

    .line 2544
    .local v13, "e":Landroid/os/RemoteException;
    const-string v3, "MediaScanner"

    const-string v5, "RemoteException in MediaScanner.scan()"

    invoke-static {v3, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 27
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "objectHandle"    # I
    .param p4, "format"    # I

    .prologue
    .line 1931
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1932
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v26

    .line 1933
    .local v26, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v26, :cond_0

    const/16 v25, 0x0

    .line 1934
    .local v25, "fileType":I
    :goto_0
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1935
    .local v23, "file":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v10, 0x3e8

    div-long v14, v4, v10

    .line 1937
    .local v14, "lastModifiedSeconds":J
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1942
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1944
    .local v7, "values":Landroid/content/ContentValues;
    const-string v6, "_size"

    const/16 v4, 0x3001

    move/from16 v0, p4

    if-ne v0, v4, :cond_1

    const-wide/16 v4, 0x0

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1946
    const-string v4, "date_modified"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1948
    const/4 v4, 0x1

    :try_start_0
    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    .line 1949
    .local v9, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v8, "_id=?"

    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1987
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v9    # "whereArgs":[Ljava/lang/String;
    .end local v14    # "lastModifiedSeconds":J
    :goto_2
    return-void

    .line 1933
    .end local v23    # "file":Ljava/io/File;
    .end local v25    # "fileType":I
    :cond_0
    move-object/from16 v0, v26

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v25, v0

    goto :goto_0

    .line 1944
    .restart local v7    # "values":Landroid/content/ContentValues;
    .restart local v14    # "lastModifiedSeconds":J
    .restart local v23    # "file":Ljava/io/File;
    .restart local v25    # "fileType":I
    :cond_1
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v4

    goto :goto_1

    .line 1951
    :catch_0
    move-exception v21

    .line 1952
    .local v21, "e":Landroid/os/RemoteException;
    const-string v4, "MediaScanner"

    const-string v5, "RemoteException in scanMtpFile"

    move-object/from16 v0, v21

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1957
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v21    # "e":Landroid/os/RemoteException;
    :cond_2
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1958
    const/16 v24, 0x0

    .line 1960
    .local v24, "fileList":Landroid/database/Cursor;
    :try_start_1
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1962
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1964
    invoke-virtual/range {p0 .. p1}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v22

    .line 1965
    .local v22, "entry":Landroid/media/MediaScanner$FileEntry;
    if-eqz v22, :cond_3

    .line 1966
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v13, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v10 .. v17}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    .end local v14    # "lastModifiedSeconds":J
    move-result-object v24

    .line 1968
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1981
    .end local v22    # "entry":Landroid/media/MediaScanner$FileEntry;
    :cond_3
    :goto_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1982
    if-eqz v24, :cond_4

    .line 1983
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1985
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto :goto_2

    .line 1972
    .restart local v14    # "lastModifiedSeconds":J
    :cond_5
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1975
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v0, v26

    iget-object v13, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v16

    const/16 v4, 0x3001

    move/from16 v0, p4

    if-ne v0, v4, :cond_7

    const/16 v18, 0x1

    :goto_4
    const/16 v19, 0x1

    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v20

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v20}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1978
    .end local v14    # "lastModifiedSeconds":J
    :catch_1
    move-exception v21

    .line 1979
    .restart local v21    # "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "MediaScanner"

    const-string v5, "RemoteException in MediaScanner.scanFile()"

    move-object/from16 v0, v21

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1981
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1982
    if-eqz v24, :cond_6

    .line 1983
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1985
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto/16 :goto_2

    .line 1975
    .end local v21    # "e":Landroid/os/RemoteException;
    .restart local v14    # "lastModifiedSeconds":J
    :cond_7
    const/16 v18, 0x0

    goto :goto_4

    .line 1981
    .end local v14    # "lastModifiedSeconds":J
    :catchall_0
    move-exception v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1982
    if-eqz v24, :cond_8

    .line 1983
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1985
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    throw v4
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1811
    :try_start_0
    invoke-direct {p0, p2}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1812
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1814
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1815
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1816
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scanSingleFile: Not exist path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1817
    const/4 v1, 0x0

    .line 1830
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .end local v11    # "file":Ljava/io/File;
    :goto_0
    return-object v1

    .line 1821
    .restart local v11    # "file":Ljava/io/File;
    :cond_0
    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long v4, v2, v6

    .line 1824
    .local v4, "lastModifiedSeconds":J
    iget-object v1, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v8

    const/4 v9, 0x1

    invoke-static {p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v10

    move-object v2, p1

    move-object v3, p3

    invoke-virtual/range {v1 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1830
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto :goto_0

    .line 1826
    .end local v4    # "lastModifiedSeconds":J
    .end local v11    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1827
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "MediaScanner"

    const-string v2, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1828
    const/4 v1, 0x0

    .line 1830
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    throw v1
.end method

.method public native setLocale(Ljava/lang/String;)V
.end method
