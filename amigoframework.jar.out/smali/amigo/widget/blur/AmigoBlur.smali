.class public final Lamigo/widget/blur/AmigoBlur;
.super Ljava/lang/Object;
.source "AmigoBlur.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/widget/blur/AmigoBlur$DrawableCallback;,
        Lamigo/widget/blur/AmigoBlur$BitmapCallback;,
        Lamigo/widget/blur/AmigoBlur$BlurCallback;,
        Lamigo/widget/blur/AmigoBlur$BlurType;,
        Lamigo/widget/blur/AmigoBlur$GioneeBlurHolder;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x3

.field private static final DBG_TAG:Ljava/lang/String; = "GioneeBlur"

.field private static final DEBUG:Z = true

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I = 0xa

.field private static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final TYPE_BITMAP:I = 0x0

.field private static final TYPE_DRAWABLE:I = 0x1

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v3, 0xa

    .line 43
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lamigo/widget/blur/AmigoBlur;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 44
    new-instance v0, Lamigo/widget/blur/AmigoBlur$1;

    invoke-direct {v0}, Lamigo/widget/blur/AmigoBlur$1;-><init>()V

    sput-object v0, Lamigo/widget/blur/AmigoBlur;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 55
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x3

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lamigo/widget/blur/AmigoBlur;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lamigo/widget/blur/AmigoBlur;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lamigo/widget/blur/AmigoBlur;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 59
    const-string v0, "gnspecialeffect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lamigo/widget/blur/AmigoBlur$1;)V
    .locals 0
    .param p1, "x0"    # Lamigo/widget/blur/AmigoBlur$1;

    .prologue
    .line 34
    invoke-direct {p0}, Lamigo/widget/blur/AmigoBlur;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lamigo/widget/blur/AmigoBlur;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/blur/AmigoBlur;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lamigo/widget/blur/AmigoBlur;->process(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private checkArguments(Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$BlurCallback;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "blurRatio"    # I
    .param p3, "callback"    # Lamigo/widget/blur/AmigoBlur$BlurCallback;

    .prologue
    .line 174
    if-nez p3, :cond_0

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The BlurCallback is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    if-nez p1, :cond_1

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Resources is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_1
    if-lez p2, :cond_2

    const/4 v0, 0x6

    if-lt p2, v0, :cond_3

    .line 181
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The blurRatio must greater than 0 and less than 6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_3
    return-void
.end method

.method private checkArguments(Ljava/lang/Object;Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$BlurCallback;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "blurRatio"    # I
    .param p4, "callback"    # Lamigo/widget/blur/AmigoBlur$BlurCallback;

    .prologue
    .line 167
    invoke-direct {p0, p2, p3, p4}, Lamigo/widget/blur/AmigoBlur;->checkArguments(Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$BlurCallback;)V

    .line 168
    if-nez p1, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The argument is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    return-void
.end method

.method private execute(Landroid/graphics/Bitmap;Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$BlurCallback;)V
    .locals 7
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "blurRatio"    # I
    .param p4, "callback"    # Lamigo/widget/blur/AmigoBlur$BlurCallback;

    .prologue
    .line 140
    sget-object v6, Lamigo/widget/blur/AmigoBlur;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v0, Lamigo/widget/blur/AmigoBlur$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lamigo/widget/blur/AmigoBlur$2;-><init>(Lamigo/widget/blur/AmigoBlur;Landroid/graphics/Bitmap;ILamigo/widget/blur/AmigoBlur$BlurCallback;Landroid/content/res/Resources;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 163
    return-void
.end method

.method public static getInstance()Lamigo/widget/blur/AmigoBlur;
    .locals 1

    .prologue
    .line 191
    # getter for: Lamigo/widget/blur/AmigoBlur$GioneeBlurHolder;->sInstance:Lamigo/widget/blur/AmigoBlur;
    invoke-static {}, Lamigo/widget/blur/AmigoBlur$GioneeBlurHolder;->access$200()Lamigo/widget/blur/AmigoBlur;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenshot(IILandroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "screenWidth"    # I
    .param p1, "screenHeight"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "deleteStatusBar"    # Z

    .prologue
    .line 271
    const-string v6, "GioneeBlur"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "screenWidth = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",screenHeight = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    if-lez p1, :cond_0

    if-gtz p0, :cond_1

    .line 274
    :cond_0
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "The screenHeight and screenWidth must greater than 0!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 278
    :cond_1
    :try_start_0
    const-string v6, "android.view.Surface"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 279
    .local v5, "surface":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/view/Surface;>;"
    const-string v6, "screenshot"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 280
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-static {p2}, Lamigo/widget/blur/AmigoBlur;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v4

    .line 282
    .local v4, "statusBarHeight":I
    const-string v6, "GioneeBlur"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "statusBarHeight = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 285
    .local v3, "sBitmap":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_2

    .line 286
    const/4 v6, 0x0

    sub-int v7, p1, v4

    invoke-static {v3, v6, v4, p0, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v3

    .line 301
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "sBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "statusBarHeight":I
    .end local v5    # "surface":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/view/Surface;>;"
    :cond_2
    :goto_0
    return-object v3

    .line 290
    :catch_0
    move-exception v1

    .line 291
    .local v1, "e1":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 301
    .end local v1    # "e1":Ljava/lang/ClassNotFoundException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 292
    :catch_1
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 294
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 296
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 298
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getScreenshot(IILandroid/content/res/Resources;Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "screenWidth"    # I
    .param p1, "screenHeight"    # I
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "deleteStatusBar"    # Z

    .prologue
    .line 316
    if-nez p2, :cond_0

    .line 317
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The res object is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    :cond_0
    invoke-static {p0, p1, p3, p4}, Lamigo/widget/blur/AmigoBlur;->getScreenshot(IILandroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 320
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private static getStatusBarHeight(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 242
    .local v3, "obj":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 243
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    .local v5, "temp":I
    const/4 v4, 0x0

    .line 245
    .local v4, "statusBarHeight":I
    :try_start_0
    const-string v6, "com.android.internal.R$dimen"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 247
    const-string v6, "status_bar_height"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 253
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_0
    return v4

    .line 250
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private process(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "blurRatio"    # I

    .prologue
    const/4 v10, 0x0

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 83
    .local v3, "bmpWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 85
    .local v4, "bmpHeight":I
    const-string v0, "GioneeBlur"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bmpWidth = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",bmpHeight = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v0, "GioneeBlur"

    const-string v2, "nativeProcessBitmap start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v0, "GioneeBlur"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "blurRatio = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v1, 0x0

    .line 112
    .local v1, "resultBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 118
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 119
    .local v6, "canvas":Landroid/graphics/Canvas;
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v6, p1, v10, v10, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 123
    .local v8, "startTime":J
    const/16 v2, 0x18

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lamigo/widget/blur/AmigoBlur;->nativeProcessBitmap(Landroid/graphics/Bitmap;IIII)V

    .line 127
    const-string v0, "GioneeBlur"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "elapse time = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 135
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "startTime":J
    :goto_0
    return-object v0

    .line 113
    :catch_0
    move-exception v7

    .line 114
    .local v7, "error":Ljava/lang/OutOfMemoryError;
    const-string v0, "GioneeBlur"

    const-string v2, "blur bitmap OutOfMemory. "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "dstWidth"    # I
    .param p3, "dstHeight"    # I

    .prologue
    .line 71
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 72
    .local v2, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 73
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 74
    .local v1, "matrix":Landroid/graphics/Matrix;
    int-to-float v5, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 75
    .local v3, "sx":F
    int-to-float v5, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 76
    .local v4, "sy":F
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 77
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p1, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 78
    return-object v2
.end method


# virtual methods
.method public generateBlurBitmap(ILandroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$BitmapCallback;)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "blurRatio"    # I
    .param p4, "callback"    # Lamigo/widget/blur/AmigoBlur$BitmapCallback;

    .prologue
    .line 357
    invoke-direct {p0, p2, p3, p4}, Lamigo/widget/blur/AmigoBlur;->checkArguments(Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$BlurCallback;)V

    .line 358
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 359
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0, p2, p3, p4}, Lamigo/widget/blur/AmigoBlur;->generateBlurBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$BitmapCallback;)V

    .line 360
    return-void
.end method

.method public generateBlurBitmap(Landroid/graphics/Bitmap;Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$BitmapCallback;)V
    .locals 0
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "blurRatio"    # I
    .param p4, "callback"    # Lamigo/widget/blur/AmigoBlur$BitmapCallback;

    .prologue
    .line 336
    invoke-direct {p0, p1, p2, p3, p4}, Lamigo/widget/blur/AmigoBlur;->checkArguments(Ljava/lang/Object;Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$BlurCallback;)V

    .line 337
    invoke-direct {p0, p1, p2, p3, p4}, Lamigo/widget/blur/AmigoBlur;->execute(Landroid/graphics/Bitmap;Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$BlurCallback;)V

    .line 338
    return-void
.end method

.method public generateBlurBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$BitmapCallback;)V
    .locals 2
    .param p1, "srcDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "blurRatio"    # I
    .param p4, "callback"    # Lamigo/widget/blur/AmigoBlur$BitmapCallback;

    .prologue
    .line 345
    invoke-direct {p0, p1, p2, p3, p4}, Lamigo/widget/blur/AmigoBlur;->checkArguments(Ljava/lang/Object;Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$BlurCallback;)V

    move-object v0, p1

    .line 346
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 347
    .local v0, "bmpBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3, p4}, Lamigo/widget/blur/AmigoBlur;->generateBlurBitmap(Landroid/graphics/Bitmap;Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$BitmapCallback;)V

    .line 348
    return-void
.end method

.method public generateBlurBitmap(Landroid/view/View;Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$BitmapCallback;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "blurRatio"    # I
    .param p4, "callback"    # Lamigo/widget/blur/AmigoBlur$BitmapCallback;

    .prologue
    .line 369
    invoke-direct {p0, p1, p2, p3, p4}, Lamigo/widget/blur/AmigoBlur;->checkArguments(Ljava/lang/Object;Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$BlurCallback;)V

    .line 370
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 372
    .local v0, "cacheBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0, p2, p3, p4}, Lamigo/widget/blur/AmigoBlur;->generateBlurBitmap(Landroid/graphics/Bitmap;Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$BitmapCallback;)V

    .line 373
    return-void
.end method

.method public generateBlurDrawable(ILandroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$DrawableCallback;)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "blurRatio"    # I
    .param p4, "callback"    # Lamigo/widget/blur/AmigoBlur$DrawableCallback;

    .prologue
    .line 405
    invoke-direct {p0, p2, p3, p4}, Lamigo/widget/blur/AmigoBlur;->checkArguments(Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$BlurCallback;)V

    .line 406
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 407
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0, p2, p3, p4}, Lamigo/widget/blur/AmigoBlur;->generateBlurDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$DrawableCallback;)V

    .line 408
    return-void
.end method

.method public generateBlurDrawable(Landroid/graphics/Bitmap;Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$DrawableCallback;)V
    .locals 5
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "blurRatio"    # I
    .param p4, "callback"    # Lamigo/widget/blur/AmigoBlur$DrawableCallback;

    .prologue
    .line 389
    invoke-direct {p0, p1, p2, p3, p4}, Lamigo/widget/blur/AmigoBlur;->checkArguments(Ljava/lang/Object;Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$BlurCallback;)V

    .line 390
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 391
    .local v1, "bmpWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 393
    .local v0, "bmpHeight":I
    const-string v2, "GioneeBlur"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateBlurDrawable bmpWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",bmpHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-direct {p0, p1, p2, p3, p4}, Lamigo/widget/blur/AmigoBlur;->execute(Landroid/graphics/Bitmap;Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$BlurCallback;)V

    .line 396
    return-void
.end method

.method public generateBlurDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$DrawableCallback;)V
    .locals 2
    .param p1, "srcDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "blurRatio"    # I
    .param p4, "callback"    # Lamigo/widget/blur/AmigoBlur$DrawableCallback;

    .prologue
    .line 416
    invoke-direct {p0, p1, p2, p3, p4}, Lamigo/widget/blur/AmigoBlur;->checkArguments(Ljava/lang/Object;Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$BlurCallback;)V

    move-object v0, p1

    .line 417
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 418
    .local v0, "bmpBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3, p4}, Lamigo/widget/blur/AmigoBlur;->generateBlurDrawable(Landroid/graphics/Bitmap;Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$DrawableCallback;)V

    .line 419
    return-void
.end method

.method public generateBlurDrawable(Landroid/view/View;Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$DrawableCallback;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "blurRatio"    # I
    .param p4, "callback"    # Lamigo/widget/blur/AmigoBlur$DrawableCallback;

    .prologue
    .line 428
    invoke-direct {p0, p1, p2, p3, p4}, Lamigo/widget/blur/AmigoBlur;->checkArguments(Ljava/lang/Object;Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$BlurCallback;)V

    .line 429
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 430
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 431
    .local v0, "cacheBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0, p2, p3, p4}, Lamigo/widget/blur/AmigoBlur;->generateBlurDrawable(Landroid/graphics/Bitmap;Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$DrawableCallback;)V

    .line 432
    return-void
.end method

.method public final native nativeProcessBitmap(Landroid/graphics/Bitmap;IIII)V
.end method

.method public final native nativeProcessBitmap(Landroid/graphics/Bitmap;[IIIII)V
.end method
