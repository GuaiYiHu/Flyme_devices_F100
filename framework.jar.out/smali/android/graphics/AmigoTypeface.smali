.class public Landroid/graphics/AmigoTypeface;
.super Ljava/lang/Object;
.source "AmigoTypeface.java"


# static fields
.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static final FONTS_DIR:Ljava/lang/String; = "/system/fonts/amigo/"

.field public static final LINE_FONTS_DIR:Ljava/lang/String; = "/data/misc/gionee/font/"

.field private static final TAG:Ljava/lang/String; = "AmigoTypeface"

.field private static mAmigoFont:Ljava/lang/String;

.field private static mAmigoTypeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/AmigoTypeface;->mAmigoFont:Ljava/lang/String;

    .line 28
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v0, Landroid/graphics/AmigoTypeface;->mAmigoTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAmigoTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Landroid/graphics/AmigoTypeface;->mAmigoTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getAmigoTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "font"    # Ljava/lang/String;

    .prologue
    .line 32
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 33
    :cond_0
    const/4 v2, 0x0

    .line 66
    :goto_0
    return-object v2

    .line 35
    :cond_1
    sget-object v2, Landroid/graphics/AmigoTypeface;->mAmigoFont:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 36
    sget-object v2, Landroid/graphics/AmigoTypeface;->mAmigoTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 40
    :cond_2
    const/4 v0, 0x0

    .line 44
    .local v0, "createTypefaceFail":Z
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/fonts/amigo/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Landroid/graphics/AmigoTypeface;->mAmigoTypeface:Landroid/graphics/Typeface;

    .line 45
    sput-object p0, Landroid/graphics/AmigoTypeface;->mAmigoFont:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_1
    if-eqz v0, :cond_3

    .line 57
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/misc/gionee/font/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Landroid/graphics/AmigoTypeface;->mAmigoTypeface:Landroid/graphics/Typeface;

    .line 58
    sput-object p0, Landroid/graphics/AmigoTypeface;->mAmigoFont:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    :cond_3
    :goto_2
    sget-object v2, Landroid/graphics/AmigoTypeface;->mAmigoTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    .line 51
    const-string v2, "AmigoTypeface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get amigo typeface failed, caused by e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 59
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 60
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    .line 61
    const-string v2, "AmigoTypeface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get amigo typeface failed, caused by e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static getCurrentFontType(Landroid/content/res/Configuration;)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/content/res/Configuration;->amigoFont:Ljava/lang/String;

    .line 77
    .local v0, "fontName":Ljava/lang/String;
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 79
    .local v1, "typeface":Landroid/graphics/Typeface;
    const-string v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    invoke-static {v0}, Landroid/graphics/AmigoTypeface;->getAmigoTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 83
    :cond_0
    return-object v1
.end method
