.class public Lamigo/preference/AmigoPreferenceManager;
.super Ljava/lang/Object;
.source "AmigoPreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/preference/AmigoPreferenceManager$OnActivityDestroyListener;,
        Lamigo/preference/AmigoPreferenceManager$OnActivityStopListener;,
        Lamigo/preference/AmigoPreferenceManager$OnActivityResultListener;,
        Lamigo/preference/AmigoPreferenceManager$OnPreferenceTreeClickListener;
    }
.end annotation


# static fields
.field public static final KEY_HAS_SET_DEFAULT_VALUES:Ljava/lang/String; = "_has_set_default_values"

.field public static final METADATA_KEY_PREFERENCES:Ljava/lang/String; = "amigo.preference"

.field private static final TAG:Ljava/lang/String; = "PreferenceManager"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityDestroyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lamigo/preference/AmigoPreferenceManager$OnActivityDestroyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityResultListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lamigo/preference/AmigoPreferenceManager$OnActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityStopListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lamigo/preference/AmigoPreferenceManager$OnActivityStopListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mFragment:Lamigo/preference/AmigoPreferenceFragment;

.field private mNextId:J

.field private mNextRequestCode:I

.field private mNoCommit:Z

.field private mOnPreferenceTreeClickListener:Lamigo/preference/AmigoPreferenceManager$OnPreferenceTreeClickListener;

.field private mPreferenceScreen:Lamigo/preference/AmigoPreferenceScreen;

.field private mPreferencesScreens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSharedPreferencesMode:I

.field private mSharedPreferencesName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "firstRequestCode"    # I

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lamigo/preference/AmigoPreferenceManager;->mNextId:J

    .line 126
    iput-object p1, p0, Lamigo/preference/AmigoPreferenceManager;->mActivity:Landroid/app/Activity;

    .line 127
    iput p2, p0, Lamigo/preference/AmigoPreferenceManager;->mNextRequestCode:I

    .line 129
    invoke-direct {p0, p1}, Lamigo/preference/AmigoPreferenceManager;->init(Landroid/content/Context;)V

    .line 130
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lamigo/preference/AmigoPreferenceManager;->mNextId:J

    .line 141
    invoke-direct {p0, p1}, Lamigo/preference/AmigoPreferenceManager;->init(Landroid/content/Context;)V

    .line 142
    return-void
.end method

.method private dismissAllScreens()V
    .locals 3

    .prologue
    .line 752
    monitor-enter p0

    .line 754
    :try_start_0
    iget-object v2, p0, Lamigo/preference/AmigoPreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v2, :cond_1

    .line 755
    monitor-exit p0

    .line 765
    :cond_0
    return-void

    .line 758
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lamigo/preference/AmigoPreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 759
    .local v1, "screensToDismiss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/DialogInterface;>;"
    iget-object v2, p0, Lamigo/preference/AmigoPreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 760
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 763
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 762
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 760
    .end local v0    # "i":I
    .end local v1    # "screensToDismiss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/DialogInterface;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 351
    invoke-static {p0}, Lamigo/preference/AmigoPreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lamigo/preference/AmigoPreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultSharedPreferencesMode()I
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method private static getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    iput-object p1, p0, Lamigo/preference/AmigoPreferenceManager;->mContext:Landroid/content/Context;

    .line 147
    invoke-static {p1}, Lamigo/preference/AmigoPreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoPreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method private queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .param p1, "queryIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultValues(Landroid/content/Context;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "readAgain"    # Z

    .prologue
    .line 426
    invoke-static {p0}, Lamigo/preference/AmigoPreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lamigo/preference/AmigoPreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    invoke-static {p0, v0, v1, p1, p2}, Lamigo/preference/AmigoPreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 428
    return-void
.end method

.method public static setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedPreferencesName"    # Ljava/lang/String;
    .param p2, "sharedPreferencesMode"    # I
    .param p3, "resId"    # I
    .param p4, "readAgain"    # Z

    .prologue
    const/4 v5, 0x0

    .line 460
    const-string v4, "_has_set_default_values"

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 463
    .local v0, "defaultValueSp":Landroid/content/SharedPreferences;
    if-nez p4, :cond_0

    const-string v4, "_has_set_default_values"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 464
    :cond_0
    new-instance v2, Lamigo/preference/AmigoPreferenceManager;

    invoke-direct {v2, p0}, Lamigo/preference/AmigoPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 465
    .local v2, "pm":Lamigo/preference/AmigoPreferenceManager;
    invoke-virtual {v2, p1}, Lamigo/preference/AmigoPreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v2, p2}, Lamigo/preference/AmigoPreferenceManager;->setSharedPreferencesMode(I)V

    .line 467
    const/4 v4, 0x0

    invoke-virtual {v2, p0, p3, v4}, Lamigo/preference/AmigoPreferenceManager;->inflateFromResource(Landroid/content/Context;ILamigo/preference/AmigoPreferenceScreen;)Lamigo/preference/AmigoPreferenceScreen;

    .line 469
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "_has_set_default_values"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 472
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "pm":Lamigo/preference/AmigoPreferenceManager;
    :cond_1
    :goto_0
    return-void

    .line 473
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "pm":Lamigo/preference/AmigoPreferenceManager;
    :catch_0
    move-exception v3

    .line 477
    .local v3, "unused":Ljava/lang/AbstractMethodError;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private setNoCommit(Z)V
    .locals 2
    .param p1, "noCommit"    # Z

    .prologue
    .line 515
    if-nez p1, :cond_0

    iget-object v1, p0, Lamigo/preference/AmigoPreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 517
    :try_start_0
    iget-object v1, p0, Lamigo/preference/AmigoPreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lamigo/preference/AmigoPreferenceManager;->mNoCommit:Z

    .line 526
    return-void

    .line 518
    :catch_0
    move-exception v0

    .line 522
    .local v0, "unused":Ljava/lang/AbstractMethodError;
    iget-object v1, p0, Lamigo/preference/AmigoPreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method addPreferencesScreen(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "screen"    # Landroid/content/DialogInterface;

    .prologue
    .line 718
    monitor-enter p0

    .line 720
    :try_start_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v0, :cond_0

    .line 721
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mPreferencesScreens:Ljava/util/List;

    .line 724
    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    monitor-exit p0

    .line 726
    return-void

    .line 725
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createPreferenceScreen(Landroid/content/Context;)Lamigo/preference/AmigoPreferenceScreen;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    new-instance v0, Lamigo/preference/AmigoPreferenceScreen;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lamigo/preference/AmigoPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 265
    .local v0, "preferenceScreen":Lamigo/preference/AmigoPreferenceScreen;
    invoke-virtual {v0, p0}, Lamigo/preference/AmigoPreferenceScreen;->onAttachedToHierarchy(Lamigo/preference/AmigoPreferenceManager;)V

    .line 266
    return-object v0
.end method

.method dispatchActivityDestroy()V
    .locals 5

    .prologue
    .line 685
    const/4 v2, 0x0

    .line 687
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lamigo/preference/AmigoPreferenceManager$OnActivityDestroyListener;>;"
    monitor-enter p0

    .line 688
    :try_start_0
    iget-object v4, p0, Lamigo/preference/AmigoPreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 689
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lamigo/preference/AmigoPreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lamigo/preference/AmigoPreferenceManager$OnActivityDestroyListener;>;"
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lamigo/preference/AmigoPreferenceManager$OnActivityDestroyListener;>;"
    move-object v2, v3

    .line 691
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lamigo/preference/AmigoPreferenceManager$OnActivityDestroyListener;>;"
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lamigo/preference/AmigoPreferenceManager$OnActivityDestroyListener;>;"
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    if-eqz v2, :cond_1

    .line 694
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 695
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 696
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lamigo/preference/AmigoPreferenceManager$OnActivityDestroyListener;

    invoke-interface {v4}, Lamigo/preference/AmigoPreferenceManager$OnActivityDestroyListener;->onActivityDestroy()V

    .line 695
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 691
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 701
    :cond_1
    invoke-direct {p0}, Lamigo/preference/AmigoPreferenceManager;->dismissAllScreens()V

    .line 702
    return-void
.end method

.method dispatchActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 589
    monitor-enter p0

    .line 590
    :try_start_0
    iget-object v3, p0, Lamigo/preference/AmigoPreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-nez v3, :cond_1

    monitor-exit p0

    .line 600
    :cond_0
    return-void

    .line 591
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lamigo/preference/AmigoPreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 592
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lamigo/preference/AmigoPreferenceManager$OnActivityResultListener;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 595
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 596
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lamigo/preference/AmigoPreferenceManager$OnActivityResultListener;

    invoke-interface {v3, p1, p2, p3}, Lamigo/preference/AmigoPreferenceManager$OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 595
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 592
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lamigo/preference/AmigoPreferenceManager$OnActivityResultListener;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method dispatchActivityStop()V
    .locals 4

    .prologue
    .line 639
    monitor-enter p0

    .line 640
    :try_start_0
    iget-object v3, p0, Lamigo/preference/AmigoPreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-nez v3, :cond_1

    monitor-exit p0

    .line 648
    :cond_0
    return-void

    .line 641
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lamigo/preference/AmigoPreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 642
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lamigo/preference/AmigoPreferenceManager$OnActivityStopListener;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 645
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 646
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lamigo/preference/AmigoPreferenceManager$OnActivityStopListener;

    invoke-interface {v3}, Lamigo/preference/AmigoPreferenceManager$OnActivityStopListener;->onActivityStop()V

    .line 645
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 642
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lamigo/preference/AmigoPreferenceManager$OnActivityStopListener;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method dispatchNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 745
    invoke-direct {p0}, Lamigo/preference/AmigoPreferenceManager;->dismissAllScreens()V

    .line 746
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lamigo/preference/AmigoPreference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 395
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mPreferenceScreen:Lamigo/preference/AmigoPreferenceScreen;

    if-nez v0, :cond_0

    .line 396
    const/4 v0, 0x0

    .line 399
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mPreferenceScreen:Lamigo/preference/AmigoPreferenceScreen;

    invoke-virtual {v0, p1}, Lamigo/preference/AmigoPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lamigo/preference/AmigoPreference;

    move-result-object v0

    goto :goto_0
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lamigo/preference/AmigoPreferenceManager;->mNoCommit:Z

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 494
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 497
    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 499
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0
.end method

.method getFragment()Lamigo/preference/AmigoPreferenceFragment;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mFragment:Lamigo/preference/AmigoPreferenceFragment;

    return-object v0
.end method

.method getNextId()J
    .locals 4

    .prologue
    .line 275
    monitor-enter p0

    .line 276
    :try_start_0
    iget-wide v0, p0, Lamigo/preference/AmigoPreferenceManager;->mNextId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lamigo/preference/AmigoPreferenceManager;->mNextId:J

    monitor-exit p0

    return-wide v0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getNextRequestCode()I
    .locals 2

    .prologue
    .line 712
    monitor-enter p0

    .line 713
    :try_start_0
    iget v0, p0, Lamigo/preference/AmigoPreferenceManager;->mNextRequestCode:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lamigo/preference/AmigoPreferenceManager;->mNextRequestCode:I

    monitor-exit p0

    return v0

    .line 714
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getOnPreferenceTreeClickListener()Lamigo/preference/AmigoPreferenceManager$OnPreferenceTreeClickListener;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mOnPreferenceTreeClickListener:Lamigo/preference/AmigoPreferenceManager$OnPreferenceTreeClickListener;

    return-object v0
.end method

.method getPreferenceScreen()Lamigo/preference/AmigoPreferenceScreen;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mPreferenceScreen:Lamigo/preference/AmigoPreferenceScreen;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lamigo/preference/AmigoPreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    iget v2, p0, Lamigo/preference/AmigoPreferenceManager;->mSharedPreferencesMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 339
    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getSharedPreferencesMode()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lamigo/preference/AmigoPreferenceManager;->mSharedPreferencesMode:I

    return v0
.end method

.method public getSharedPreferencesName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    return-object v0
.end method

.method inflateFromIntent(Landroid/content/Intent;Lamigo/preference/AmigoPreferenceScreen;)Lamigo/preference/AmigoPreferenceScreen;
    .locals 13
    .param p1, "queryIntent"    # Landroid/content/Intent;
    .param p2, "rootPreferences"    # Lamigo/preference/AmigoPreferenceScreen;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lamigo/preference/AmigoPreferenceManager;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 194
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 196
    .local v5, "inflatedRes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 197
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 198
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 200
    .local v7, "metaData":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    const-string v10, "amigo.preference"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 196
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 206
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v12, "amigo.preference"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 209
    .local v9, "uniqueResId":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 210
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 214
    :try_start_0
    iget-object v10, p0, Lamigo/preference/AmigoPreferenceManager;->mContext:Landroid/content/Context;

    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 221
    .local v2, "context":Landroid/content/Context;
    new-instance v6, Lamigo/preference/AmigoPreferenceInflater;

    invoke-direct {v6, v2, p0}, Lamigo/preference/AmigoPreferenceInflater;-><init>(Landroid/content/Context;Lamigo/preference/AmigoPreferenceManager;)V

    .line 222
    .local v6, "inflater":Lamigo/preference/AmigoPreferenceInflater;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "amigo.preference"

    invoke-virtual {v1, v10, v11}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 227
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 215
    .end local v2    # "context":Landroid/content/Context;
    .end local v6    # "inflater":Lamigo/preference/AmigoPreferenceInflater;
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v3

    .line 216
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "PreferenceManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not create context for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 231
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "metaData":Landroid/os/Bundle;
    .end local v9    # "uniqueResId":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2, p0}, Lamigo/preference/AmigoPreferenceScreen;->onAttachedToHierarchy(Lamigo/preference/AmigoPreferenceManager;)V

    .line 233
    return-object p2
.end method

.method public inflateFromResource(Landroid/content/Context;ILamigo/preference/AmigoPreferenceScreen;)Lamigo/preference/AmigoPreferenceScreen;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "rootPreferences"    # Lamigo/preference/AmigoPreferenceScreen;

    .prologue
    const/4 v1, 0x1

    .line 251
    invoke-direct {p0, v1}, Lamigo/preference/AmigoPreferenceManager;->setNoCommit(Z)V

    .line 253
    new-instance v0, Lamigo/preference/AmigoPreferenceInflater;

    invoke-direct {v0, p1, p0}, Lamigo/preference/AmigoPreferenceInflater;-><init>(Landroid/content/Context;Lamigo/preference/AmigoPreferenceManager;)V

    .line 254
    .local v0, "inflater":Lamigo/preference/AmigoPreferenceInflater;
    invoke-virtual {v0, p2, p3, v1}, Lamigo/preference/AmigoPreferenceInflater;->inflate(ILamigo/preference/AmigoGenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object p3

    .end local p3    # "rootPreferences":Lamigo/preference/AmigoPreferenceScreen;
    check-cast p3, Lamigo/preference/AmigoPreferenceScreen;

    .line 255
    .restart local p3    # "rootPreferences":Lamigo/preference/AmigoPreferenceScreen;
    invoke-virtual {p3, p0}, Lamigo/preference/AmigoPreferenceScreen;->onAttachedToHierarchy(Lamigo/preference/AmigoPreferenceManager;)V

    .line 258
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lamigo/preference/AmigoPreferenceManager;->setNoCommit(Z)V

    .line 260
    return-object p3
.end method

.method registerOnActivityDestroyListener(Lamigo/preference/AmigoPreferenceManager$OnActivityDestroyListener;)V
    .locals 1
    .param p1, "listener"    # Lamigo/preference/AmigoPreferenceManager$OnActivityDestroyListener;

    .prologue
    .line 656
    monitor-enter p0

    .line 657
    :try_start_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 658
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    .line 661
    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 662
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    :cond_1
    monitor-exit p0

    .line 665
    return-void

    .line 664
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method registerOnActivityResultListener(Lamigo/preference/AmigoPreferenceManager$OnActivityResultListener;)V
    .locals 1
    .param p1, "listener"    # Lamigo/preference/AmigoPreferenceManager$OnActivityResultListener;

    .prologue
    .line 559
    monitor-enter p0

    .line 560
    :try_start_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 561
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mActivityResultListeners:Ljava/util/List;

    .line 564
    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 565
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_1
    monitor-exit p0

    .line 568
    return-void

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerOnActivityStopListener(Lamigo/preference/AmigoPreferenceManager$OnActivityStopListener;)V
    .locals 1
    .param p1, "listener"    # Lamigo/preference/AmigoPreferenceManager$OnActivityStopListener;

    .prologue
    .line 608
    monitor-enter p0

    .line 609
    :try_start_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mActivityStopListeners:Ljava/util/List;

    .line 613
    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 614
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_1
    monitor-exit p0

    .line 617
    return-void

    .line 616
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removePreferencesScreen(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "screen"    # Landroid/content/DialogInterface;

    .prologue
    .line 729
    monitor-enter p0

    .line 731
    :try_start_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v0, :cond_0

    .line 732
    monitor-exit p0

    .line 737
    :goto_0
    return-void

    .line 735
    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 736
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setFragment(Lamigo/preference/AmigoPreferenceFragment;)V
    .locals 0
    .param p1, "fragment"    # Lamigo/preference/AmigoPreferenceFragment;

    .prologue
    .line 154
    iput-object p1, p0, Lamigo/preference/AmigoPreferenceManager;->mFragment:Lamigo/preference/AmigoPreferenceFragment;

    .line 155
    return-void
.end method

.method setOnPreferenceTreeClickListener(Lamigo/preference/AmigoPreferenceManager$OnPreferenceTreeClickListener;)V
    .locals 0
    .param p1, "listener"    # Lamigo/preference/AmigoPreferenceManager$OnPreferenceTreeClickListener;

    .prologue
    .line 774
    iput-object p1, p0, Lamigo/preference/AmigoPreferenceManager;->mOnPreferenceTreeClickListener:Lamigo/preference/AmigoPreferenceManager$OnPreferenceTreeClickListener;

    .line 775
    return-void
.end method

.method setPreferences(Lamigo/preference/AmigoPreferenceScreen;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Lamigo/preference/AmigoPreferenceScreen;

    .prologue
    .line 379
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mPreferenceScreen:Lamigo/preference/AmigoPreferenceScreen;

    if-eq p1, v0, :cond_0

    .line 380
    iput-object p1, p0, Lamigo/preference/AmigoPreferenceManager;->mPreferenceScreen:Lamigo/preference/AmigoPreferenceScreen;

    .line 381
    const/4 v0, 0x1

    .line 384
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSharedPreferencesMode(I)V
    .locals 1
    .param p1, "sharedPreferencesMode"    # I

    .prologue
    .line 322
    iput p1, p0, Lamigo/preference/AmigoPreferenceManager;->mSharedPreferencesMode:I

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 324
    return-void
.end method

.method public setSharedPreferencesName(Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferencesName"    # Ljava/lang/String;

    .prologue
    .line 299
    iput-object p1, p0, Lamigo/preference/AmigoPreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 301
    return-void
.end method

.method shouldCommit()Z
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Lamigo/preference/AmigoPreferenceManager;->mNoCommit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method unregisterOnActivityDestroyListener(Lamigo/preference/AmigoPreferenceManager$OnActivityDestroyListener;)V
    .locals 1
    .param p1, "listener"    # Lamigo/preference/AmigoPreferenceManager$OnActivityDestroyListener;

    .prologue
    .line 673
    monitor-enter p0

    .line 674
    :try_start_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 677
    :cond_0
    monitor-exit p0

    .line 678
    return-void

    .line 677
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method unregisterOnActivityResultListener(Lamigo/preference/AmigoPreferenceManager$OnActivityResultListener;)V
    .locals 1
    .param p1, "listener"    # Lamigo/preference/AmigoPreferenceManager$OnActivityResultListener;

    .prologue
    .line 576
    monitor-enter p0

    .line 577
    :try_start_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 580
    :cond_0
    monitor-exit p0

    .line 581
    return-void

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterOnActivityStopListener(Lamigo/preference/AmigoPreferenceManager$OnActivityStopListener;)V
    .locals 1
    .param p1, "listener"    # Lamigo/preference/AmigoPreferenceManager$OnActivityStopListener;

    .prologue
    .line 625
    monitor-enter p0

    .line 626
    :try_start_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 629
    :cond_0
    monitor-exit p0

    .line 630
    return-void

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
