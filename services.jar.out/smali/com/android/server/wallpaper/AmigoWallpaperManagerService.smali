.class Lcom/android/server/wallpaper/AmigoWallpaperManagerService;
.super Ljava/lang/Object;
.source "AmigoWallpaperManagerService.java"


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "WallpaperService"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWallPaperSize(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/content/Context;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 8
    .param p0, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v7, -0x1

    .line 20
    move-object v2, p0

    .line 21
    .local v2, "mWallPaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 22
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 23
    .local v1, "d":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v0

    .line 24
    .local v0, "baseSize":I
    const-string v4, "WallpaperService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadSettingsLocked--->mWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; mHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    if-ne v4, v7, :cond_0

    .line 27
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    iput v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 29
    :cond_0
    iget v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    if-ne v4, v7, :cond_1

    .line 30
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 32
    :cond_1
    return-object v2
.end method
