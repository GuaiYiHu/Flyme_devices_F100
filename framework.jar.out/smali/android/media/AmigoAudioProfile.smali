.class public Landroid/media/AmigoAudioProfile;
.super Ljava/lang/Object;
.source "AmigoAudioProfile.java"


# static fields
.field public static final ALARM_RING:Ljava/lang/String; = "alarmring_default"

.field public static final AMIGOSETTINGCLASS:Ljava/lang/String; = "amigo.provider.AmigoSettings"

.field public static final DEFAULT_MMS2_URI:Landroid/net/Uri;

.field public static final DEFAULT_MMS_URI:Landroid/net/Uri;

.field public static final DEFAULT_RINGTONE2_URI:Landroid/net/Uri;

.field public static final MMS:Ljava/lang/String; = "mms"

.field public static final MMS2:Ljava/lang/String; = "mms2"

.field public static final RINGTONE2:Ljava/lang/String; = "ringtone2"

.field private static final TAG:Ljava/lang/String; = "AmigoAudioProfile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "ringtone2"

    invoke-static {v0}, Landroid/media/AmigoAudioProfile;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/AmigoAudioProfile;->DEFAULT_RINGTONE2_URI:Landroid/net/Uri;

    .line 39
    const-string/jumbo v0, "mms"

    invoke-static {v0}, Landroid/media/AmigoAudioProfile;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/AmigoAudioProfile;->DEFAULT_MMS_URI:Landroid/net/Uri;

    .line 41
    const-string/jumbo v0, "mms2"

    invoke-static {v0}, Landroid/media/AmigoAudioProfile;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/AmigoAudioProfile;->DEFAULT_MMS2_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 210
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 211
    .local v1, "pathFilenameStart":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 212
    .local v0, "filenameLength":I
    invoke-virtual {p0, v1, p1, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    const/4 v5, 0x0

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 78
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 80
    .local v2, "mSettingValue":I
    :try_start_0
    const-string v4, "amigo.provider.AmigoSettings"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 81
    const-string v4, "getInt"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/ContentResolver;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 82
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v4, v6

    const/4 v6, 0x1

    aput-object p1, v4, v6

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v4, v2

    .line 87
    :goto_0
    return v4

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "AmigoAudioProfile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getInt error :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 85
    goto :goto_0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "settingName"    # Ljava/lang/String;

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 50
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 52
    .local v3, "mSettingValue":Ljava/lang/String;
    :try_start_0
    const-string v5, "amigo.provider.AmigoSettings"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 53
    const-string v5, "getString"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/ContentResolver;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 54
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v3

    .line 59
    :goto_0
    return-object v5

    .line 55
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "AmigoAudioProfile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getString error :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-static {p0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 151
    const-string v0, "amigosettings"

    .line 152
    .local v0, "AUTHORITY":Ljava/lang/String;
    const-string v2, "config"

    .line 153
    .local v2, "TABLE_CONFIG":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 154
    .local v1, "CONTENT_URI":Landroid/net/Uri;
    invoke-static {v1, p0}, Landroid/media/AmigoAudioProfile;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 93
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 95
    .local v2, "mSettingValue":Ljava/lang/String;
    :try_start_0
    const-string v4, "amigo.provider.AmigoSettings"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 96
    const-string/jumbo v4, "putInt"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/ContentResolver;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 97
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "AmigoAudioProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "putInt error :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 65
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 67
    .local v2, "mSettingValue":Ljava/lang/String;
    :try_start_0
    const-string v4, "amigo.provider.AmigoSettings"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 68
    const-string/jumbo v4, "putString"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/ContentResolver;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 69
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "AmigoAudioProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "putString error :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setAmigoAlarmDefaultValue(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "rowId"    # J

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "existingSettingValue":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/media/AmigoAudioProfile;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "AmigoAudioProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAmigoSettingIfNotSet: name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method public static setAmigoAudioModeState(Landroid/content/Context;I)V
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ringerMode"    # I

    .prologue
    const/4 v2, 0x1

    .line 129
    if-ne p1, v2, :cond_0

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "amigo_vibration_switch"

    invoke-static {v0, v1, v2}, Landroid/media/AmigoAudioProfile;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 132
    :cond_0
    if-nez p1, :cond_1

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "amigo_silent_switch"

    invoke-static {v0, v1, v2}, Landroid/media/AmigoAudioProfile;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 135
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "amigo_silent_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/media/AmigoAudioProfile;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 138
    :cond_2
    return-void
.end method

.method public static setAmigoAudioModeState(Landroid/content/Context;II)V
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ringerMode"    # I
    .param p2, "value"    # I

    .prologue
    .line 140
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "amigo_vibration_switch"

    invoke-static {v0, v1, p2}, Landroid/media/AmigoAudioProfile;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 143
    :cond_0
    if-nez p1, :cond_1

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "amigo_silent_switch"

    invoke-static {v0, v1, p2}, Landroid/media/AmigoAudioProfile;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 146
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "amigo_silent_switch"

    invoke-static {v0, v1, p2}, Landroid/media/AmigoAudioProfile;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 149
    :cond_2
    return-void
.end method

.method public static setAmigoSettingIfNotSet(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "rowId"    # J

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 108
    .local v0, "existingSettingValue":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/media/AmigoAudioProfile;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/media/AmigoAudioProfile;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "AmigoAudioProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAmigoSettingIfNotSet: name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    const-string v1, "AmigoAudioProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAmigoSettingIfNotSet: name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setMms2Profile(Landroid/content/Context;Landroid/net/Uri;JLjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "tableUri"    # Landroid/net/Uri;
    .param p2, "rowId"    # J
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "filename"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-static {p4, p5}, Landroid/media/AmigoAudioProfile;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string/jumbo v0, "mms2"

    invoke-static {p0, v0, p1, p2, p3}, Landroid/media/AmigoAudioProfile;->setAmigoSettingIfNotSet(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;J)V

    .line 175
    const/16 v0, 0x40

    invoke-static {p0, v0, p1, p2, p3}, Landroid/media/AmigoAudioProfile;->setProfileSettings(Landroid/content/Context;ILandroid/net/Uri;J)V

    .line 176
    const/4 v0, 0x1

    .line 178
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setMmsProfile(Landroid/content/Context;Landroid/net/Uri;JLjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "tableUri"    # Landroid/net/Uri;
    .param p2, "rowId"    # J
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "filename"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {p4, p5}, Landroid/media/AmigoAudioProfile;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-string/jumbo v0, "mms"

    invoke-static {p0, v0, p1, p2, p3}, Landroid/media/AmigoAudioProfile;->setAmigoSettingIfNotSet(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;J)V

    .line 167
    const/16 v0, 0x20

    invoke-static {p0, v0, p1, p2, p3}, Landroid/media/AmigoAudioProfile;->setProfileSettings(Landroid/content/Context;ILandroid/net/Uri;J)V

    .line 168
    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setNotificationsProfile(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "tableUri"    # Landroid/net/Uri;
    .param p2, "rowId"    # J

    .prologue
    .line 162
    const/4 v0, 0x2

    invoke-static {p0, v0, p1, p2, p3}, Landroid/media/AmigoAudioProfile;->setProfileSettings(Landroid/content/Context;ILandroid/net/Uri;J)V

    .line 163
    return-void
.end method

.method public static setProfileSettings(Landroid/content/Context;ILandroid/net/Uri;J)V
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "rowId"    # J

    .prologue
    .line 195
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 196
    const-string/jumbo v0, "mtk_audioprofile_default_notification"

    invoke-static {p0, v0, p2, p3, p4}, Landroid/media/AmigoAudioProfile;->setSettingIfNotSet(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;J)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 198
    const-string/jumbo v0, "mtk_audioprofile_default_ringtone"

    invoke-static {p0, v0, p2, p3, p4}, Landroid/media/AmigoAudioProfile;->setSettingIfNotSet(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;J)V

    goto :goto_0

    .line 200
    :cond_2
    const/16 v0, 0x10

    if-ne p1, v0, :cond_3

    .line 201
    const-string/jumbo v0, "mtk_audioprofile_default_ringtone2"

    invoke-static {p0, v0, p2, p3, p4}, Landroid/media/AmigoAudioProfile;->setSettingIfNotSet(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;J)V

    goto :goto_0

    .line 202
    :cond_3
    const/16 v0, 0x20

    if-ne p1, v0, :cond_4

    .line 203
    const-string/jumbo v0, "mtk_audioprofile_default_mms"

    invoke-static {p0, v0, p2, p3, p4}, Landroid/media/AmigoAudioProfile;->setSettingIfNotSet(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;J)V

    goto :goto_0

    .line 204
    :cond_4
    const/16 v0, 0x40

    if-ne p1, v0, :cond_0

    .line 205
    const-string/jumbo v0, "mtk_audioprofile_default_mms2"

    invoke-static {p0, v0, p2, p3, p4}, Landroid/media/AmigoAudioProfile;->setSettingIfNotSet(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;J)V

    goto :goto_0
.end method

.method public static setRingtone2Profile(Landroid/content/Context;Landroid/net/Uri;JLjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "tableUri"    # Landroid/net/Uri;
    .param p2, "rowId"    # J
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "filename"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-static {p4, p5}, Landroid/media/AmigoAudioProfile;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const-string/jumbo v0, "ringtone2"

    invoke-static {p0, v0, p1, p2, p3}, Landroid/media/AmigoAudioProfile;->setAmigoSettingIfNotSet(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;J)V

    .line 188
    const/16 v0, 0x10

    invoke-static {p0, v0, p1, p2, p3}, Landroid/media/AmigoAudioProfile;->setProfileSettings(Landroid/content/Context;ILandroid/net/Uri;J)V

    .line 189
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setRingtoneProfile(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "tableUri"    # Landroid/net/Uri;
    .param p2, "rowId"    # J

    .prologue
    .line 182
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2, p3}, Landroid/media/AmigoAudioProfile;->setProfileSettings(Landroid/content/Context;ILandroid/net/Uri;J)V

    .line 183
    return-void
.end method

.method public static setSettingIfNotSet(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "rowId"    # J

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "existingSettingValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 123
    const-string v1, "AmigoAudioProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSettingIfNotSet: name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    const-string v1, "AmigoAudioProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSettingIfNotSet: name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
