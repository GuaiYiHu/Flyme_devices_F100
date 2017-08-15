.class public Lcom/android/internal/policy/impl/AmigoBlurHelper;
.super Ljava/lang/Object;
.source "AmigoBlurHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/AmigoBlurHelper$Callback;
    }
.end annotation


# static fields
.field public static final LOCK:Ljava/lang/Object;

.field protected static final TAG:Ljava/lang/String; = "AmigoBlurHelper"

.field public static final ZOOM_FRAC:F = 16.0f

.field public static mBlur:Landroid/graphics/Bitmap;

.field private static final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/AmigoBlurHelper$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private static mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static sInstance:Lcom/android/internal/policy/impl/AmigoBlurHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/AmigoBlurHelper;->mBlur:Landroid/graphics/Bitmap;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/AmigoBlurHelper;->LOCK:Ljava/lang/Object;

    .line 38
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/AmigoBlurHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/AmigoBlurHelper;->mCallbacks:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Lcom/android/internal/policy/impl/AmigoBlurHelper;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/AmigoBlurHelper;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/AmigoBlurHelper;->sInstance:Lcom/android/internal/policy/impl/AmigoBlurHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/internal/policy/impl/AmigoBlurHelper;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static addCallbacks(Lcom/android/internal/policy/impl/AmigoBlurHelper$Callback;)V
    .locals 1
    .param p0, "cb"    # Lcom/android/internal/policy/impl/AmigoBlurHelper$Callback;

    .prologue
    .line 119
    sget-object v0, Lcom/android/internal/policy/impl/AmigoBlurHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public static getBlurHelper()Lcom/android/internal/policy/impl/AmigoBlurHelper;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/internal/policy/impl/AmigoBlurHelper;->sInstance:Lcom/android/internal/policy/impl/AmigoBlurHelper;

    return-object v0
.end method

.method private static getDegreesForRotation(I)F
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 179
    packed-switch p0, :pswitch_data_0

    .line 187
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 181
    :pswitch_0
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    .line 183
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    .line 185
    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static releaseBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 112
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 114
    const/4 p0, 0x0

    .line 116
    :cond_0
    return-void
.end method

.method public static takeScreenShot(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    const-string v10, "window"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 135
    .local v9, "wm":Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 136
    .local v4, "display":Landroid/view/Display;
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 137
    .local v5, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 138
    const/4 v10, 0x2

    new-array v3, v10, [F

    const/4 v10, 0x0

    iget v11, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v11, v11

    aput v11, v3, v10

    const/4 v10, 0x1

    iget v11, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v11, v11

    aput v11, v3, v10

    .line 139
    .local v3, "dims":[F
    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v10

    invoke-static {v10}, Lcom/android/internal/policy/impl/AmigoBlurHelper;->getDegreesForRotation(I)F

    move-result v2

    .line 141
    .local v2, "degrees":F
    const/4 v10, 0x0

    cmpl-float v10, v2, v10

    if-lez v10, :cond_1

    const/4 v7, 0x1

    .line 142
    .local v7, "needRotate":Z
    :goto_0
    if-eqz v7, :cond_0

    .line 143
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 144
    .local v6, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 145
    neg-float v10, v2

    invoke-virtual {v6, v10}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 146
    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 147
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, v3, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    aput v11, v3, v10

    .line 148
    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, v3, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    aput v11, v3, v10

    .line 151
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    const/4 v0, 0x0

    .line 153
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    aget v10, v3, v10

    float-to-int v10, v10

    const/4 v11, 0x1

    aget v11, v3, v11

    float-to-int v11, v11

    invoke-static {v10, v11}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    if-nez v0, :cond_2

    .line 155
    const-string v10, "AmigoBlurHelper"

    const-string v11, "takeScreenShot bitmap = null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v10, 0x0

    .line 175
    :goto_1
    return-object v10

    .line 141
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "needRotate":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 159
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "needRotate":Z
    :cond_2
    if-eqz v7, :cond_3

    .line 160
    iget v10, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 162
    .local v8, "ss":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 163
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 164
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 165
    const/4 v10, 0x0

    aget v10, v3, v10

    neg-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    const/4 v11, 0x1

    aget v11, v3, v11

    neg-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 166
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v0, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 167
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 169
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 170
    move-object v0, v8

    .line 172
    .end local v1    # "c":Landroid/graphics/Canvas;
    .end local v8    # "ss":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 173
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    move-object v10, v0

    .line 175
    goto :goto_1
.end method

.method public static zoomInBitmap(FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "zoom"    # F
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 124
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 125
    .local v4, "height":I
    move v8, p0

    .line 126
    .local v8, "scale":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 127
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v8, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 128
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 130
    .local v7, "resizedBitmap":Landroid/graphics/Bitmap;
    return-object v7
.end method


# virtual methods
.method public blur(Landroid/graphics/Bitmap;ILandroid/content/Context;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/Bitmap;
    .param p2, "iBlur"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    sget-object v0, Lcom/android/internal/policy/impl/AmigoBlurHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/internal/policy/impl/AmigoBlurHelper$2;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/internal/policy/impl/AmigoBlurHelper$2;-><init>(Lcom/android/internal/policy/impl/AmigoBlurHelper;Landroid/graphics/Bitmap;Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method public createBlurBg(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    sget-object v0, Lcom/android/internal/policy/impl/AmigoBlurHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/internal/policy/impl/AmigoBlurHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/AmigoBlurHelper$1;-><init>(Lcom/android/internal/policy/impl/AmigoBlurHelper;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method
