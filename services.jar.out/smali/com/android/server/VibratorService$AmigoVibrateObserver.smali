.class Lcom/android/server/VibratorService$AmigoVibrateObserver;
.super Landroid/database/ContentObserver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AmigoVibrateObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/server/VibratorService$AmigoVibrateObserver;->this$0:Lcom/android/server/VibratorService;

    .line 239
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 240
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    .line 243
    iget-object v1, p0, Lcom/android/server/VibratorService$AmigoVibrateObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$500(Lcom/android/server/VibratorService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 244
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "haptic_feedback_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 247
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/server/VibratorService$AmigoVibrateObserver;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->updateAmigoVibrateState()V
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$600(Lcom/android/server/VibratorService;)V

    .line 252
    return-void
.end method
