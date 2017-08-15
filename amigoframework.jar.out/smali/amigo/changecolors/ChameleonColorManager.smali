.class public Lamigo/changecolors/ChameleonColorManager;
.super Ljava/lang/Object;
.source "ChameleonColorManager.java"

# interfaces
.implements Lamigo/changecolors/OnChangeColorListener;
.implements Lamigo/changecolors/OnChangeColorListenerWithParams;


# static fields
.field private static final TAG:Ljava/lang/String; = "Chameleon"

.field private static sAccentColorG1:I

.field private static sAccentColorG2:I

.field private static sAppbarColorA1:I

.field private static sBackgroudColorB1:I

.field private static sButtonBackgroudColorB4:I

.field private static sChameleonColorManager:Lamigo/changecolors/ChameleonColorManager;

.field private static sContentColorForthlyOnAppbarT4:I

.field private static sContentColorOnStatusbarS3:I

.field private static sContentColorPrimaryOnAppbarT1:I

.field private static sContentColorPrimaryOnBackgroudC1:I

.field private static sContentColorSecondaryOnAppbarT2:I

.field private static sContentColorSecondaryOnBackgroudC2:I

.field private static sContentColorThirdlyOnAppbarT3:I

.field private static sContentColorThirdlyOnBackgroudC3:I

.field private static sEditTextBackgroudColorB3:I

.field private static sIsNeedChangeColor:Z

.field private static sIsPowerSavingMode:Z

.field private static sPopupBackgroudColorB2:I

.field private static sStatusbarBackgroudColorS1:I

.field private static sSystemNavigationBackgroudColorS2:I

.field private static sThemeType:I


# instance fields
.field private CHAMELEON_ACTION:Ljava/lang/String;

.field private mActivityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mChangeColorReceiver:Lamigo/changecolors/ChangeColorReceiver;

.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mOnChangeColorListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lamigo/changecolors/OnChangeColorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnChangeColorListenerWithParamsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lamigo/changecolors/OnChangeColorListenerWithParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lamigo/changecolors/ChameleonColorManager;->sIsNeedChangeColor:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamigo/changecolors/ChameleonColorManager;->mActivityList:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamigo/changecolors/ChameleonColorManager;->mOnChangeColorListenerList:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamigo/changecolors/ChameleonColorManager;->mOnChangeColorListenerWithParamsList:Ljava/util/ArrayList;

    .line 29
    const-string v0, "amigo.intent.action.chameleon.CHANGE_COLOR"

    iput-object v0, p0, Lamigo/changecolors/ChameleonColorManager;->CHAMELEON_ACTION:Ljava/lang/String;

    return-void
.end method

.method public static getAccentColor_G1()I
    .locals 1

    .prologue
    .line 422
    sget v0, Lamigo/changecolors/ChameleonColorManager;->sAccentColorG1:I

    return v0
.end method

.method public static getAccentColor_G2()I
    .locals 1

    .prologue
    .line 426
    sget v0, Lamigo/changecolors/ChameleonColorManager;->sAccentColorG2:I

    return v0
.end method

.method public static getAppbarColor_A1()I
    .locals 1

    .prologue
    .line 394
    sget v0, Lamigo/changecolors/ChameleonColorManager;->sAppbarColorA1:I

    return v0
.end method

.method public static getBackgroudColor_B1()I
    .locals 1

    .prologue
    .line 398
    sget v0, Lamigo/changecolors/ChameleonColorManager;->sBackgroudColorB1:I

    return v0
.end method

.method public static getButtonBackgroudColor_B4()I
    .locals 1

    .prologue
    .line 410
    sget v0, Lamigo/changecolors/ChameleonColorManager;->sButtonBackgroudColorB4:I

    return v0
.end method

.method private getColorFromCursor(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lamigo/changecolors/ChameleonColorManager;->getColorFromCursor(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getColorFromCursor(Landroid/database/Cursor;Ljava/lang/String;I)I
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "defaultColor"    # I

    .prologue
    .line 380
    move v0, p3

    .line 381
    .local v0, "color":I
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 382
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 383
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 386
    :cond_0
    return v0
.end method

.method public static getContentColorForthlyOnAppbar_T4()I
    .locals 1

    .prologue
    .line 442
    sget v0, Lamigo/changecolors/ChameleonColorManager;->sContentColorForthlyOnAppbarT4:I

    return v0
.end method

.method public static getContentColorOnStatusbar_S3()I
    .locals 1

    .prologue
    .line 458
    sget v0, Lamigo/changecolors/ChameleonColorManager;->sContentColorOnStatusbarS3:I

    return v0
.end method

.method public static getContentColorPrimaryOnAppbar_T1()I
    .locals 1

    .prologue
    .line 430
    sget v0, Lamigo/changecolors/ChameleonColorManager;->sContentColorPrimaryOnAppbarT1:I

    return v0
.end method

.method public static getContentColorPrimaryOnBackgroud_C1()I
    .locals 1

    .prologue
    .line 446
    sget v0, Lamigo/changecolors/ChameleonColorManager;->sContentColorPrimaryOnBackgroudC1:I

    return v0
.end method

.method public static getContentColorSecondaryOnAppbar_T2()I
    .locals 1

    .prologue
    .line 434
    sget v0, Lamigo/changecolors/ChameleonColorManager;->sContentColorSecondaryOnAppbarT2:I

    return v0
.end method

.method public static getContentColorSecondaryOnBackgroud_C2()I
    .locals 1

    .prologue
    .line 450
    sget v0, Lamigo/changecolors/ChameleonColorManager;->sContentColorSecondaryOnBackgroudC2:I

    return v0
.end method

.method public static getContentColorThirdlyOnAppbar_T3()I
    .locals 1

    .prologue
    .line 438
    sget v0, Lamigo/changecolors/ChameleonColorManager;->sContentColorThirdlyOnAppbarT3:I

    return v0
.end method

.method public static getContentColorThirdlyOnBackgroud_C3()I
    .locals 1

    .prologue
    .line 454
    sget v0, Lamigo/changecolors/ChameleonColorManager;->sContentColorThirdlyOnBackgroudC3:I

    return v0
.end method

.method private getDataFromChameleon()Z
    .locals 13

    .prologue
    const/4 v10, 0x0

    const v12, -0xc5c5c6

    const/4 v11, -0x1

    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 273
    const/4 v8, 0x0

    .line 276
    .local v8, "result":Z
    :try_start_0
    iget-object v3, p0, Lamigo/changecolors/ChameleonColorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 282
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "content://com.amigo.chameleon.provider/colorConfiguration"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 285
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 287
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    const-string v2, "appbar_color_a1"

    const v3, -0xc2c2c3

    invoke-direct {p0, v6, v2, v3}, Lamigo/changecolors/ChameleonColorManager;->getColorFromCursor(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lamigo/changecolors/ChameleonColorManager;->sAppbarColorA1:I

    .line 292
    const-string v2, "background_color_b1"

    const v3, -0x20203

    invoke-direct {p0, v6, v2, v3}, Lamigo/changecolors/ChameleonColorManager;->getColorFromCursor(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lamigo/changecolors/ChameleonColorManager;->sBackgroudColorB1:I

    .line 295
    const-string v2, "popup_background_color_b2"

    const v3, -0x10102

    invoke-direct {p0, v6, v2, v3}, Lamigo/changecolors/ChameleonColorManager;->getColorFromCursor(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lamigo/changecolors/ChameleonColorManager;->sPopupBackgroudColorB2:I

    .line 298
    const-string v2, "edit_text_background_color_b3"

    const/high16 v3, 0x10000000

    invoke-direct {p0, v6, v2, v3}, Lamigo/changecolors/ChameleonColorManager;->getColorFromCursor(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lamigo/changecolors/ChameleonColorManager;->sEditTextBackgroudColorB3:I

    .line 301
    const-string v2, "button_background_color_b4"

    invoke-direct {p0, v6, v2, v11}, Lamigo/changecolors/ChameleonColorManager;->getColorFromCursor(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lamigo/changecolors/ChameleonColorManager;->sButtonBackgroudColorB4:I

    .line 304
    const-string v2, "statusbar_background_color_s1"

    invoke-direct {p0, v6, v2, v12}, Lamigo/changecolors/ChameleonColorManager;->getColorFromCursor(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lamigo/changecolors/ChameleonColorManager;->sStatusbarBackgroudColorS1:I

    .line 307
    const-string v2, "system_navigation_background_color_s2"

    invoke-direct {p0, v6, v2, v12}, Lamigo/changecolors/ChameleonColorManager;->getColorFromCursor(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lamigo/changecolors/ChameleonColorManager;->sSystemNavigationBackgroudColorS2:I

    .line 312
    const-string v2, "accent_color_g1"

    const v3, -0x53d00

    invoke-direct {p0, v6, v2, v3}, Lamigo/changecolors/ChameleonColorManager;->getColorFromCursor(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lamigo/changecolors/ChameleonColorManager;->sAccentColorG1:I

    .line 316
    const-string v2, "accent_color_g2"

    const v3, 0x50fac300

    invoke-direct {p0, v6, v2, v3}, Lamigo/changecolors/ChameleonColorManager;->getColorFromCursor(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lamigo/changecolors/ChameleonColorManager;->sAccentColorG2:I

    .line 320
    const-string v2, "content_color_primary_on_appbar_t1"

    invoke-direct {p0, v6, v2, v11}, Lamigo/changecolors/ChameleonColorManager;->getColorFromCursor(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lamigo/changecolors/ChameleonColorManager;->sContentColorPrimaryOnAppbarT1:I

    .line 324
    const-string v2, "content_color_secondary_on_appbar_t2"

    const v3, -0x33000001    # -1.3421772E8f

    invoke-direct {p0, v6, v2, v3}, Lamigo/changecolors/ChameleonColorManager;->getColorFromCursor(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lamigo/changecolors/ChameleonColorManager;->sContentColorSecondaryOnAppbarT2:I

    .line 328
    const-string v2, "content_color_thirdly_on_appbar_t3"

    const v3, 0x50ffffff

    invoke-direct {p0, v6, v2, v3}, Lamigo/changecolors/ChameleonColorManager;->getColorFromCursor(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lamigo/changecolors/ChameleonColorManager;->sContentColorThirdlyOnAppbarT3:I

    .line 332
    const-string v2, "content_color_forthly_on_appbar_t4"

    const v3, 0x20ffffff

    invoke-direct {p0, v6, v2, v3}, Lamigo/changecolors/ChameleonColorManager;->getColorFromCursor(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lamigo/changecolors/ChameleonColorManager;->sContentColorForthlyOnAppbarT4:I

    .line 337
    const-string v2, "content_color_primary_on_backgroud_c1"

    const/high16 v3, -0x34000000    # -3.3554432E7f

    invoke-direct {p0, v6, v2, v3}, Lamigo/changecolors/ChameleonColorManager;->getColorFromCursor(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lamigo/changecolors/ChameleonColorManager;->sContentColorPrimaryOnBackgroudC1:I

    .line 341
    const-string v2, "content_color_secondary_on_backgroud_c2"

    const/high16 v3, 0x66000000

    invoke-direct {p0, v6, v2, v3}, Lamigo/changecolors/ChameleonColorManager;->getColorFromCursor(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lamigo/changecolors/ChameleonColorManager;->sContentColorSecondaryOnBackgroudC2:I

    .line 345
    const-string v2, "content_color_thirdly_on_backgroud_c3"

    const/high16 v3, 0x33000000

    invoke-direct {p0, v6, v2, v3}, Lamigo/changecolors/ChameleonColorManager;->getColorFromCursor(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lamigo/changecolors/ChameleonColorManager;->sContentColorThirdlyOnBackgroudC3:I

    .line 349
    const-string v2, "content_color_on_statusbar_s3"

    invoke-direct {p0, v6, v2, v11}, Lamigo/changecolors/ChameleonColorManager;->getColorFromCursor(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lamigo/changecolors/ChameleonColorManager;->sContentColorOnStatusbarS3:I

    .line 353
    const-string v2, "theme_type"

    invoke-direct {p0, v6, v2, v9}, Lamigo/changecolors/ChameleonColorManager;->getColorFromCursor(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lamigo/changecolors/ChameleonColorManager;->sThemeType:I

    .line 357
    const-string v2, "id"

    invoke-direct {p0, v6, v2, v9}, Lamigo/changecolors/ChameleonColorManager;->getColorFromCursor(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    move v2, v9

    :goto_0
    sput-boolean v2, Lamigo/changecolors/ChameleonColorManager;->sIsPowerSavingMode:Z

    .line 361
    sput-boolean v9, Lamigo/changecolors/ChameleonColorManager;->sIsNeedChangeColor:Z

    .line 363
    const-string v2, "Chameleon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "G1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lamigo/changecolors/ChameleonColorManager;->sAccentColorG1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; B1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lamigo/changecolors/ChameleonColorManager;->sBackgroudColorB1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v8, 0x1

    .line 367
    :cond_0
    if-eqz v6, :cond_1

    .line 368
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v10, v8

    .line 370
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :goto_1
    return v10

    .line 277
    :catch_0
    move-exception v7

    .line 278
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    move v2, v10

    .line 357
    goto :goto_0
.end method

.method private getDataFromSettings()Z
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 221
    iget-object v7, p0, Lamigo/changecolors/ChameleonColorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "amigo_color_data"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "allDataStr":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 224
    const-string v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "arr1":[Ljava/lang/String;
    const-string v4, ""

    .line 226
    .local v4, "targetDataStr":Ljava/lang/String;
    array-length v7, v1

    packed-switch v7, :pswitch_data_0

    .line 240
    :goto_0
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "arr2":[Ljava/lang/String;
    aget-object v7, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 242
    .local v3, "id":I
    aget-object v7, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lamigo/changecolors/ChameleonColorManager;->sAppbarColorA1:I

    .line 243
    aget-object v7, v2, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lamigo/changecolors/ChameleonColorManager;->sBackgroudColorB1:I

    .line 244
    const/4 v7, 0x3

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lamigo/changecolors/ChameleonColorManager;->sPopupBackgroudColorB2:I

    .line 245
    const/4 v7, 0x4

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lamigo/changecolors/ChameleonColorManager;->sEditTextBackgroudColorB3:I

    .line 246
    const/4 v7, 0x5

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lamigo/changecolors/ChameleonColorManager;->sButtonBackgroudColorB4:I

    .line 247
    const/4 v7, 0x6

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lamigo/changecolors/ChameleonColorManager;->sStatusbarBackgroudColorS1:I

    .line 248
    const/4 v7, 0x7

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lamigo/changecolors/ChameleonColorManager;->sSystemNavigationBackgroudColorS2:I

    .line 249
    const/16 v7, 0x8

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lamigo/changecolors/ChameleonColorManager;->sAccentColorG1:I

    .line 250
    const/16 v7, 0x9

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lamigo/changecolors/ChameleonColorManager;->sAccentColorG2:I

    .line 251
    const/16 v7, 0xa

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lamigo/changecolors/ChameleonColorManager;->sContentColorPrimaryOnAppbarT1:I

    .line 252
    const/16 v7, 0xb

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lamigo/changecolors/ChameleonColorManager;->sContentColorSecondaryOnAppbarT2:I

    .line 253
    const/16 v7, 0xc

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lamigo/changecolors/ChameleonColorManager;->sContentColorThirdlyOnAppbarT3:I

    .line 254
    const/16 v7, 0xd

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lamigo/changecolors/ChameleonColorManager;->sContentColorForthlyOnAppbarT4:I

    .line 255
    const/16 v7, 0xe

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lamigo/changecolors/ChameleonColorManager;->sContentColorPrimaryOnBackgroudC1:I

    .line 256
    const/16 v7, 0xf

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lamigo/changecolors/ChameleonColorManager;->sContentColorSecondaryOnBackgroudC2:I

    .line 257
    const/16 v7, 0x10

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lamigo/changecolors/ChameleonColorManager;->sContentColorThirdlyOnBackgroudC3:I

    .line 258
    const/16 v7, 0x11

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lamigo/changecolors/ChameleonColorManager;->sContentColorOnStatusbarS3:I

    .line 259
    const/16 v7, 0x12

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lamigo/changecolors/ChameleonColorManager;->sThemeType:I

    .line 262
    if-ne v3, v9, :cond_0

    move v5, v6

    :cond_0
    sput-boolean v5, Lamigo/changecolors/ChameleonColorManager;->sIsPowerSavingMode:Z

    .line 264
    sput-boolean v6, Lamigo/changecolors/ChameleonColorManager;->sIsNeedChangeColor:Z

    .line 265
    const-string v5, "Chameleon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "G1="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lamigo/changecolors/ChameleonColorManager;->sAccentColorG1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; B1="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lamigo/changecolors/ChameleonColorManager;->sBackgroudColorB1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v1    # "arr1":[Ljava/lang/String;
    .end local v2    # "arr2":[Ljava/lang/String;
    .end local v3    # "id":I
    .end local v4    # "targetDataStr":Ljava/lang/String;
    :goto_1
    return v6

    .line 228
    .restart local v1    # "arr1":[Ljava/lang/String;
    .restart local v4    # "targetDataStr":Ljava/lang/String;
    :pswitch_0
    aget-object v4, v1, v5

    .line 229
    goto/16 :goto_0

    .line 231
    :pswitch_1
    aget-object v4, v1, v6

    .line 232
    goto/16 :goto_0

    .line 234
    :pswitch_2
    aget-object v4, v1, v9

    .line 235
    goto/16 :goto_0

    .end local v1    # "arr1":[Ljava/lang/String;
    .end local v4    # "targetDataStr":Ljava/lang/String;
    :cond_1
    move v6, v5

    .line 268
    goto :goto_1

    .line 226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getEditTextBackgroudColor_B3()I
    .locals 1

    .prologue
    .line 406
    sget v0, Lamigo/changecolors/ChameleonColorManager;->sEditTextBackgroudColorB3:I

    return v0
.end method

.method public static declared-synchronized getInstance()Lamigo/changecolors/ChameleonColorManager;
    .locals 2

    .prologue
    .line 80
    const-class v1, Lamigo/changecolors/ChameleonColorManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lamigo/changecolors/ChameleonColorManager;->sChameleonColorManager:Lamigo/changecolors/ChameleonColorManager;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lamigo/changecolors/ChameleonColorManager;

    invoke-direct {v0}, Lamigo/changecolors/ChameleonColorManager;-><init>()V

    sput-object v0, Lamigo/changecolors/ChameleonColorManager;->sChameleonColorManager:Lamigo/changecolors/ChameleonColorManager;

    .line 83
    :cond_0
    sget-object v0, Lamigo/changecolors/ChameleonColorManager;->sChameleonColorManager:Lamigo/changecolors/ChameleonColorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPopupBackgroudColor_B2()I
    .locals 1

    .prologue
    .line 402
    sget v0, Lamigo/changecolors/ChameleonColorManager;->sPopupBackgroudColorB2:I

    return v0
.end method

.method public static getStatusbarBackgroudColor_S1()I
    .locals 1

    .prologue
    .line 414
    sget v0, Lamigo/changecolors/ChameleonColorManager;->sStatusbarBackgroudColorS1:I

    return v0
.end method

.method public static getSystemNavigationBackgroudColor_S2()I
    .locals 1

    .prologue
    .line 418
    sget v0, Lamigo/changecolors/ChameleonColorManager;->sSystemNavigationBackgroudColorS2:I

    return v0
.end method

.method public static getThemeType()I
    .locals 1

    .prologue
    .line 466
    sget v0, Lamigo/changecolors/ChameleonColorManager;->sThemeType:I

    return v0
.end method

.method public static isNeedChangeColor()Z
    .locals 1

    .prologue
    .line 390
    sget-boolean v0, Lamigo/changecolors/ChameleonColorManager;->sIsNeedChangeColor:Z

    return v0
.end method

.method public static isPowerSavingMode()Z
    .locals 1

    .prologue
    .line 470
    sget-boolean v0, Lamigo/changecolors/ChameleonColorManager;->sIsPowerSavingMode:Z

    return v0
.end method


# virtual methods
.method public addOnChangeColorListener(Lamigo/changecolors/OnChangeColorListener;)V
    .locals 1
    .param p1, "onChangeColorListener"    # Lamigo/changecolors/OnChangeColorListener;

    .prologue
    .line 137
    iget-object v0, p0, Lamigo/changecolors/ChameleonColorManager;->mOnChangeColorListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method public addOnChangeColorListenerWithParams(Lamigo/changecolors/OnChangeColorListenerWithParams;)V
    .locals 1
    .param p1, "onchangeColorListenerWithParams"    # Lamigo/changecolors/OnChangeColorListenerWithParams;

    .prologue
    .line 148
    iget-object v0, p0, Lamigo/changecolors/ChameleonColorManager;->mOnChangeColorListenerWithParamsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 204
    const-string v2, "Chameleon"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "context==null?:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lamigo/changecolors/ChameleonColorManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lamigo/changecolors/ChameleonColorManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 218
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 204
    goto :goto_0

    .line 211
    :cond_2
    invoke-direct {p0}, Lamigo/changecolors/ChameleonColorManager;->getDataFromSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-direct {p0}, Lamigo/changecolors/ChameleonColorManager;->getDataFromChameleon()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    const-string v0, "Chameleon"

    const-string v2, "No data in the database"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sput-boolean v1, Lamigo/changecolors/ChameleonColorManager;->sIsPowerSavingMode:Z

    .line 215
    sput-boolean v1, Lamigo/changecolors/ChameleonColorManager;->sIsNeedChangeColor:Z

    goto :goto_1
.end method

.method public onChangeColor()V
    .locals 6

    .prologue
    .line 163
    iget-object v3, p0, Lamigo/changecolors/ChameleonColorManager;->mActivityList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 164
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 165
    const-string v3, "Chameleon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restart Activity  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    goto :goto_0

    .line 171
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    iget-object v3, p0, Lamigo/changecolors/ChameleonColorManager;->mOnChangeColorListenerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lamigo/changecolors/OnChangeColorListener;

    .line 172
    .local v2, "onChangeColorListerner":Lamigo/changecolors/OnChangeColorListener;
    if-eqz v2, :cond_2

    .line 173
    invoke-interface {v2}, Lamigo/changecolors/OnChangeColorListener;->onChangeColor()V

    goto :goto_1

    .line 176
    .end local v2    # "onChangeColorListerner":Lamigo/changecolors/OnChangeColorListener;
    :cond_3
    return-void
.end method

.method public onChangeColor(I)V
    .locals 6
    .param p1, "changeColorType"    # I

    .prologue
    .line 183
    iget-object v3, p0, Lamigo/changecolors/ChameleonColorManager;->mActivityList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 184
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 185
    const-string v3, "Chameleon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restart Activity  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    goto :goto_0

    .line 191
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    iget-object v3, p0, Lamigo/changecolors/ChameleonColorManager;->mOnChangeColorListenerWithParamsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lamigo/changecolors/OnChangeColorListenerWithParams;

    .line 192
    .local v2, "onChangeColorListernerWithParams":Lamigo/changecolors/OnChangeColorListenerWithParams;
    if-eqz v2, :cond_2

    .line 193
    invoke-interface {v2, p1}, Lamigo/changecolors/OnChangeColorListenerWithParams;->onChangeColor(I)V

    goto :goto_1

    .line 196
    .end local v2    # "onChangeColorListernerWithParams":Lamigo/changecolors/OnChangeColorListenerWithParams;
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 128
    iget-object v0, p0, Lamigo/changecolors/ChameleonColorManager;->mActivityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 132
    iget-object v0, p0, Lamigo/changecolors/ChameleonColorManager;->mActivityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lamigo/changecolors/ChameleonColorManager;->register(Landroid/content/Context;Z)V

    .line 88
    return-void
.end method

.method public register(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "restart"    # Z

    .prologue
    .line 92
    if-nez p1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const-string v0, "Chameleon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Register Chameleon, restart = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lamigo/changecolors/ChameleonColorManager;->mContext:Landroid/content/Context;

    if-eq p1, v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lamigo/changecolors/ChameleonColorManager;->mContext:Landroid/content/Context;

    if-eq v0, v1, :cond_0

    .line 102
    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_2

    .line 103
    const-string v0, "Chameleon"

    const-string v1, "Context must be an Application"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lamigo/changecolors/ChameleonColorManager;->mContext:Landroid/content/Context;

    .line 108
    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lamigo/changecolors/ChameleonColorManager;->CHAMELEON_ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lamigo/changecolors/ChameleonColorManager;->mIntentFilter:Landroid/content/IntentFilter;

    .line 109
    new-instance v0, Lamigo/changecolors/ChangeColorReceiver;

    invoke-direct {v0}, Lamigo/changecolors/ChangeColorReceiver;-><init>()V

    iput-object v0, p0, Lamigo/changecolors/ChameleonColorManager;->mChangeColorReceiver:Lamigo/changecolors/ChangeColorReceiver;

    .line 110
    iget-object v0, p0, Lamigo/changecolors/ChameleonColorManager;->mChangeColorReceiver:Lamigo/changecolors/ChangeColorReceiver;

    invoke-virtual {v0, p2}, Lamigo/changecolors/ChangeColorReceiver;->setRestart(Z)V

    .line 111
    iget-object v0, p0, Lamigo/changecolors/ChameleonColorManager;->mChangeColorReceiver:Lamigo/changecolors/ChangeColorReceiver;

    invoke-virtual {v0, p0}, Lamigo/changecolors/ChangeColorReceiver;->setOnChangeColorListener(Lamigo/changecolors/OnChangeColorListener;)V

    .line 112
    iget-object v0, p0, Lamigo/changecolors/ChameleonColorManager;->mChangeColorReceiver:Lamigo/changecolors/ChangeColorReceiver;

    invoke-virtual {v0, p0}, Lamigo/changecolors/ChangeColorReceiver;->setOnChangeColorListenerWithParams(Lamigo/changecolors/OnChangeColorListenerWithParams;)V

    .line 113
    iget-object v0, p0, Lamigo/changecolors/ChameleonColorManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lamigo/changecolors/ChameleonColorManager;->mChangeColorReceiver:Lamigo/changecolors/ChangeColorReceiver;

    iget-object v2, p0, Lamigo/changecolors/ChameleonColorManager;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0}, Lamigo/changecolors/ChameleonColorManager;->init()V

    goto :goto_0

    .line 106
    :cond_2
    iput-object p1, p0, Lamigo/changecolors/ChameleonColorManager;->mContext:Landroid/content/Context;

    goto :goto_1
.end method

.method public removeOnChangeColorListener(Lamigo/changecolors/OnChangeColorListener;)V
    .locals 1
    .param p1, "onChangeColorListener"    # Lamigo/changecolors/OnChangeColorListener;

    .prologue
    .line 142
    iget-object v0, p0, Lamigo/changecolors/ChameleonColorManager;->mOnChangeColorListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method public removeOnChangeColorListenerWithParams(Lamigo/changecolors/OnChangeColorListenerWithParams;)V
    .locals 1
    .param p1, "onChangeColorListenerWithParams"    # Lamigo/changecolors/OnChangeColorListenerWithParams;

    .prologue
    .line 154
    iget-object v0, p0, Lamigo/changecolors/ChameleonColorManager;->mOnChangeColorListenerWithParamsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public unregister()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lamigo/changecolors/ChameleonColorManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "Chameleon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregistered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lamigo/changecolors/ChameleonColorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lamigo/changecolors/ChameleonColorManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lamigo/changecolors/ChameleonColorManager;->mChangeColorReceiver:Lamigo/changecolors/ChangeColorReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lamigo/changecolors/ChameleonColorManager;->mContext:Landroid/content/Context;

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    const-string v0, "Chameleon"

    const-string v1, "unregistered: null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
