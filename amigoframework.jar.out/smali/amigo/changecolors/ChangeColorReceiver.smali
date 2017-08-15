.class public Lamigo/changecolors/ChangeColorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ChangeColorReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Chameleon"


# instance fields
.field private mOnChangeColorListener:Lamigo/changecolors/OnChangeColorListener;

.field private mOnChangeColorListenerWithParams:Lamigo/changecolors/OnChangeColorListenerWithParams;

.field private mRestart:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/changecolors/ChangeColorReceiver;->mRestart:Z

    return-void
.end method

.method private clearDrawableCaches(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    :try_start_0
    const-string v3, "android.content.res.Resources"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 56
    .local v2, "resource":Ljava/lang/Class;
    const-string v3, "amigoClearDrawableCaches"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 58
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 75
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "resource":Ljava/lang/Class;
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 62
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private restartApplication(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 100
    .local v0, "am":Landroid/app/ActivityManager;
    const-string v1, "Chameleon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restart Application : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 102
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    const-string v1, "Chameleon"

    const-string v2, "start -> "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-boolean v1, p0, Lamigo/changecolors/ChangeColorReceiver;->mRestart:Z

    if-eqz v1, :cond_1

    .line 28
    invoke-direct {p0, p1}, Lamigo/changecolors/ChangeColorReceiver;->restartApplication(Landroid/content/Context;)V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const-string v1, "Chameleon"

    const-string v2, "Restart Activitys"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getInstance()Lamigo/changecolors/ChameleonColorManager;

    move-result-object v1

    invoke-virtual {v1}, Lamigo/changecolors/ChameleonColorManager;->init()V

    .line 33
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getInstance()Lamigo/changecolors/ChameleonColorManager;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v1

    if-nez v1, :cond_2

    .line 34
    invoke-direct {p0, p1}, Lamigo/changecolors/ChangeColorReceiver;->clearDrawableCaches(Landroid/content/Context;)V

    .line 38
    :cond_2
    iget-object v1, p0, Lamigo/changecolors/ChangeColorReceiver;->mOnChangeColorListener:Lamigo/changecolors/OnChangeColorListener;

    if-eqz v1, :cond_3

    .line 39
    iget-object v1, p0, Lamigo/changecolors/ChangeColorReceiver;->mOnChangeColorListener:Lamigo/changecolors/OnChangeColorListener;

    invoke-interface {v1}, Lamigo/changecolors/OnChangeColorListener;->onChangeColor()V

    .line 43
    :cond_3
    iget-object v1, p0, Lamigo/changecolors/ChangeColorReceiver;->mOnChangeColorListenerWithParams:Lamigo/changecolors/OnChangeColorListenerWithParams;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 44
    const-string v1, "changeColorType"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 46
    .local v0, "changeColorType":I
    iget-object v1, p0, Lamigo/changecolors/ChangeColorReceiver;->mOnChangeColorListenerWithParams:Lamigo/changecolors/OnChangeColorListenerWithParams;

    invoke-interface {v1, v0}, Lamigo/changecolors/OnChangeColorListenerWithParams;->onChangeColor(I)V

    goto :goto_0
.end method

.method public setOnChangeColorListener(Lamigo/changecolors/OnChangeColorListener;)V
    .locals 0
    .param p1, "changeColorListener"    # Lamigo/changecolors/OnChangeColorListener;

    .prologue
    .line 81
    iput-object p1, p0, Lamigo/changecolors/ChangeColorReceiver;->mOnChangeColorListener:Lamigo/changecolors/OnChangeColorListener;

    .line 82
    return-void
.end method

.method public setOnChangeColorListenerWithParams(Lamigo/changecolors/OnChangeColorListenerWithParams;)V
    .locals 0
    .param p1, "changeColorListenerWithParams"    # Lamigo/changecolors/OnChangeColorListenerWithParams;

    .prologue
    .line 90
    iput-object p1, p0, Lamigo/changecolors/ChangeColorReceiver;->mOnChangeColorListenerWithParams:Lamigo/changecolors/OnChangeColorListenerWithParams;

    .line 91
    return-void
.end method

.method public setRestart(Z)V
    .locals 0
    .param p1, "restart"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lamigo/changecolors/ChangeColorReceiver;->mRestart:Z

    .line 96
    return-void
.end method
