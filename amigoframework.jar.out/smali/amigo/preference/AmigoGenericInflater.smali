.class abstract Lamigo/preference/AmigoGenericInflater;
.super Ljava/lang/Object;
.source "AmigoGenericInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/preference/AmigoGenericInflater$FactoryMerger;,
        Lamigo/preference/AmigoGenericInflater$Factory;,
        Lamigo/preference/AmigoGenericInflater$Parent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "P::",
        "Lamigo/preference/AmigoGenericInflater$Parent;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final mConstructorSignature:[Ljava/lang/Class;

.field private static final sConstructorMap:Ljava/util/HashMap;


# instance fields
.field private final DEBUG:Z

.field private final mConstructorArgs:[Ljava/lang/Object;

.field protected final mContext:Landroid/content/Context;

.field private mDefaultPackage:Ljava/lang/String;

.field private mFactory:Lamigo/preference/AmigoGenericInflater$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamigo/preference/AmigoGenericInflater$Factory",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mFactorySet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lamigo/preference/AmigoGenericInflater;->mConstructorSignature:[Ljava/lang/Class;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lamigo/preference/AmigoGenericInflater;->sConstructorMap:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Lamigo/preference/AmigoGenericInflater;Landroid/content/Context;)V
    .locals 1
    .param p2, "newContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lamigo/preference/AmigoGenericInflater",
            "<TT;TP;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lamigo/preference/AmigoGenericInflater;, "Lamigo/preference/AmigoGenericInflater<TT;TP;>;"
    .local p1, "original":Lamigo/preference/AmigoGenericInflater;, "Lamigo/preference/AmigoGenericInflater<TT;TP;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamigo/preference/AmigoGenericInflater;->DEBUG:Z

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lamigo/preference/AmigoGenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 95
    iput-object p2, p0, Lamigo/preference/AmigoGenericInflater;->mContext:Landroid/content/Context;

    .line 96
    iget-object v0, p1, Lamigo/preference/AmigoGenericInflater;->mFactory:Lamigo/preference/AmigoGenericInflater$Factory;

    iput-object v0, p0, Lamigo/preference/AmigoGenericInflater;->mFactory:Lamigo/preference/AmigoGenericInflater$Factory;

    .line 97
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    .local p0, "this":Lamigo/preference/AmigoGenericInflater;, "Lamigo/preference/AmigoGenericInflater<TT;TP;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamigo/preference/AmigoGenericInflater;->DEBUG:Z

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lamigo/preference/AmigoGenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 83
    iput-object p1, p0, Lamigo/preference/AmigoGenericInflater;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method private final createItemFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lamigo/preference/AmigoGenericInflater;, "Lamigo/preference/AmigoGenericInflater<TT;TP;>;"
    const/4 v2, 0x0

    .line 410
    :try_start_0
    iget-object v3, p0, Lamigo/preference/AmigoGenericInflater;->mFactory:Lamigo/preference/AmigoGenericInflater$Factory;

    if-nez v3, :cond_1

    .line 412
    .local v2, "item":Ljava/lang/Object;, "TT;"
    :goto_0
    if-nez v2, :cond_0

    .line 413
    const/4 v3, -0x1

    const/16 v4, 0x2e

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 414
    invoke-virtual {p0, p2, p3}, Lamigo/preference/AmigoGenericInflater;->onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v2

    .line 421
    :cond_0
    :goto_1
    return-object v2

    .line 410
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_1
    iget-object v3, p0, Lamigo/preference/AmigoGenericInflater;->mFactory:Lamigo/preference/AmigoGenericInflater$Factory;

    iget-object v4, p0, Lamigo/preference/AmigoGenericInflater;->mContext:Landroid/content/Context;

    invoke-interface {v3, p2, v4, p3}, Lamigo/preference/AmigoGenericInflater$Factory;->onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 416
    .restart local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, p2, v3, p3}, Lamigo/preference/AmigoGenericInflater;->createItem(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    goto :goto_1

    .line 423
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Landroid/view/InflateException;
    throw v0

    .line 426
    .end local v0    # "e":Landroid/view/InflateException;
    :catch_1
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Error inflating class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 430
    .local v1, "ie":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 431
    throw v1

    .line 433
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v1    # "ie":Landroid/view/InflateException;
    :catch_2
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Error inflating class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 437
    .restart local v1    # "ie":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 438
    throw v1
.end method

.method private isNativePreferenceClass(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lamigo/preference/AmigoGenericInflater;, "Lamigo/preference/AmigoGenericInflater<TT;TP;>;"
    const/4 v0, 0x0

    .line 509
    const/4 v1, -0x1

    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 519
    :cond_0
    :goto_0
    return v0

    .line 511
    :cond_1
    const-string v1, "PreferenceScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "PreferenceGroup"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "PreferenceCategory"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Preference"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "PreferenceFragment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CheckBoxPreference"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SwitchPreference"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "DialogPreference"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "EditTextPreference"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ListPreference"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "MultiCheckPreference"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "MultiSelectListPreference"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "RingtonePreference"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SeekBarDialogPreference"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SeekBarPreference"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "VolumePreference"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private rInflate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TT;",
            "Landroid/util/AttributeSet;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    .local p0, "this":Lamigo/preference/AmigoGenericInflater;, "Lamigo/preference/AmigoGenericInflater<TT;TP;>;"
    .local p2, "parent":Ljava/lang/Object;, "TT;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 452
    .local v0, "depth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_2

    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 454
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 458
    invoke-virtual {p0, p1, p2, p3}, Lamigo/preference/AmigoGenericInflater;->onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 465
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, "name":Ljava/lang/String;
    invoke-direct {p0, p1, v2, p3}, Lamigo/preference/AmigoGenericInflater;->createItemFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move-object v4, p2

    .line 474
    check-cast v4, Lamigo/preference/AmigoGenericInflater$Parent;

    invoke-interface {v4, v1}, Lamigo/preference/AmigoGenericInflater$Parent;->addItemFromInflater(Ljava/lang/Object;)V

    .line 479
    invoke-direct {p0, p1, v1, p3}, Lamigo/preference/AmigoGenericInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 485
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public abstract cloneInContext(Landroid/content/Context;)Lamigo/preference/AmigoGenericInflater;
.end method

.method public final createItem(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .prologue
    .line 343
    .local p0, "this":Lamigo/preference/AmigoGenericInflater;, "Lamigo/preference/AmigoGenericInflater<TT;TP;>;"
    sget-object v5, Lamigo/preference/AmigoGenericInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 347
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    :try_start_0
    invoke-direct {p0, p1}, Lamigo/preference/AmigoGenericInflater;->isNativePreferenceClass(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 348
    const/4 v5, 0x1

    invoke-static {v5}, Lamigo/preference/NativePreferenceManager;->setAnalyzeNativePreferenceXml(Z)V

    .line 349
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Amigo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 357
    :goto_0
    if-nez v2, :cond_0

    .line 361
    iget-object v5, p0, Lamigo/preference/AmigoGenericInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    if-eqz p2, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 363
    .local v1, "clazz":Ljava/lang/Class;
    sget-object v5, Lamigo/preference/AmigoGenericInflater;->mConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 364
    sget-object v5, Lamigo/preference/AmigoGenericInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .end local v1    # "clazz":Ljava/lang/Class;
    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoGenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 368
    .local v0, "args":[Ljava/lang/Object;
    const/4 v5, 0x1

    aput-object p3, v0, v5

    .line 369
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 350
    .end local v0    # "args":[Ljava/lang/Object;
    :cond_1
    const-string v5, "android.preference."

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 351
    const/4 v5, 0x1

    invoke-static {v5}, Lamigo/preference/NativePreferenceManager;->setAnalyzeNativePreferenceXml(Z)V

    .line 352
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "amigo.preference.Amigo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 354
    :cond_2
    const/4 v5, 0x0

    invoke-static {v5}, Lamigo/preference/NativePreferenceManager;->setAnalyzeNativePreferenceXml(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 371
    :catch_0
    move-exception v3

    .line 372
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Error inflating class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 376
    .local v4, "ie":Landroid/view/InflateException;
    invoke-virtual {v4, v3}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 377
    throw v4

    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    .end local v4    # "ie":Landroid/view/InflateException;
    .restart local p1    # "name":Ljava/lang/String;
    :cond_4
    move-object v5, p1

    .line 361
    goto/16 :goto_1

    .line 379
    :catch_1
    move-exception v3

    .line 381
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    throw v3

    .line 382
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v3

    .line 383
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Error inflating class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 387
    .restart local v4    # "ie":Landroid/view/InflateException;
    invoke-virtual {v4, v3}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 388
    throw v4
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 139
    .local p0, "this":Lamigo/preference/AmigoGenericInflater;, "Lamigo/preference/AmigoGenericInflater<TT;TP;>;"
    iget-object v0, p0, Lamigo/preference/AmigoGenericInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    .local p0, "this":Lamigo/preference/AmigoGenericInflater;, "Lamigo/preference/AmigoGenericInflater<TT;TP;>;"
    iget-object v0, p0, Lamigo/preference/AmigoGenericInflater;->mDefaultPackage:Ljava/lang/String;

    return-object v0
.end method

.method public final getFactory()Lamigo/preference/AmigoGenericInflater$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lamigo/preference/AmigoGenericInflater$Factory",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lamigo/preference/AmigoGenericInflater;, "Lamigo/preference/AmigoGenericInflater<TT;TP;>;"
    iget-object v0, p0, Lamigo/preference/AmigoGenericInflater;->mFactory:Lamigo/preference/AmigoGenericInflater$Factory;

    return-object v0
.end method

.method public inflate(ILamigo/preference/AmigoGenericInflater$Parent;)Ljava/lang/Object;
    .locals 1
    .param p1, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITP;)TT;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lamigo/preference/AmigoGenericInflater;, "Lamigo/preference/AmigoGenericInflater<TT;TP;>;"
    .local p2, "root":Lamigo/preference/AmigoGenericInflater$Parent;, "TP;"
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lamigo/preference/AmigoGenericInflater;->inflate(ILamigo/preference/AmigoGenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflate(ILamigo/preference/AmigoGenericInflater$Parent;Z)Ljava/lang/Object;
    .locals 2
    .param p1, "resource"    # I
    .param p3, "attachToRoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITP;Z)TT;"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "this":Lamigo/preference/AmigoGenericInflater;, "Lamigo/preference/AmigoGenericInflater<TT;TP;>;"
    .local p2, "root":Lamigo/preference/AmigoGenericInflater$Parent;, "TP;"
    invoke-virtual {p0}, Lamigo/preference/AmigoGenericInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 237
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0, v0, p2, p3}, Lamigo/preference/AmigoGenericInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Lamigo/preference/AmigoGenericInflater$Parent;Z)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 239
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw v1
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Lamigo/preference/AmigoGenericInflater$Parent;)Ljava/lang/Object;
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TP;)TT;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lamigo/preference/AmigoGenericInflater;, "Lamigo/preference/AmigoGenericInflater<TT;TP;>;"
    .local p2, "root":Lamigo/preference/AmigoGenericInflater$Parent;, "TP;"
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lamigo/preference/AmigoGenericInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Lamigo/preference/AmigoGenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Lamigo/preference/AmigoGenericInflater$Parent;Z)Ljava/lang/Object;
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attachToRoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TP;Z)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lamigo/preference/AmigoGenericInflater;, "Lamigo/preference/AmigoGenericInflater<TT;TP;>;"
    .local p2, "root":Lamigo/preference/AmigoGenericInflater$Parent;, "TP;"
    const/4 v10, 0x2

    .line 266
    iget-object v7, p0, Lamigo/preference/AmigoGenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    monitor-enter v7

    .line 267
    :try_start_0
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 268
    .local v0, "attrs":Landroid/util/AttributeSet;
    iget-object v6, p0, Lamigo/preference/AmigoGenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lamigo/preference/AmigoGenericInflater;->mContext:Landroid/content/Context;

    aput-object v9, v6, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    move-object v3, p2

    .line 275
    .local v3, "result":Lamigo/preference/AmigoGenericInflater$Parent;, "TT;"
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    if-eq v4, v10, :cond_1

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 279
    :cond_1
    if-eq v4, v10, :cond_2

    .line 280
    new-instance v6, Landroid/view/InflateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": No start tag found!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Landroid/view/InflateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    .end local v4    # "type":I
    :catch_0
    move-exception v1

    .line 306
    .local v1, "e":Landroid/view/InflateException;
    :try_start_2
    throw v1

    .line 321
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v1    # "e":Landroid/view/InflateException;
    .end local v3    # "result":Lamigo/preference/AmigoGenericInflater$Parent;, "TT;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 291
    .restart local v0    # "attrs":Landroid/util/AttributeSet;
    .restart local v3    # "result":Lamigo/preference/AmigoGenericInflater$Parent;, "TT;"
    .restart local v4    # "type":I
    :cond_2
    :try_start_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6, v0}, Lamigo/preference/AmigoGenericInflater;->createItemFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v5

    .line 294
    .local v5, "xmlRoot":Ljava/lang/Object;, "TT;"
    check-cast v5, Lamigo/preference/AmigoGenericInflater$Parent;

    .end local v5    # "xmlRoot":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2, p3, v5}, Lamigo/preference/AmigoGenericInflater;->onMergeRoots(Lamigo/preference/AmigoGenericInflater$Parent;ZLamigo/preference/AmigoGenericInflater$Parent;)Lamigo/preference/AmigoGenericInflater$Parent;

    move-result-object v3

    .line 300
    invoke-direct {p0, p1, v3, v0}, Lamigo/preference/AmigoGenericInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V
    :try_end_3
    .catch Landroid/view/InflateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 320
    :try_start_4
    monitor-exit v7

    return-object v3

    .line 308
    .end local v4    # "type":I
    :catch_1
    move-exception v1

    .line 309
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Landroid/view/InflateException;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 310
    .local v2, "ex":Landroid/view/InflateException;
    invoke-virtual {v2, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 311
    throw v2

    .line 312
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "ex":Landroid/view/InflateException;
    :catch_2
    move-exception v1

    .line 313
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 316
    .restart local v2    # "ex":Landroid/view/InflateException;
    invoke-virtual {v2, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 317
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method protected onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TT;",
            "Landroid/util/AttributeSet;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 500
    .local p0, "this":Lamigo/preference/AmigoGenericInflater;, "Lamigo/preference/AmigoGenericInflater<TT;TP;>;"
    .local p2, "parent":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 403
    .local p0, "this":Lamigo/preference/AmigoGenericInflater;, "Lamigo/preference/AmigoGenericInflater<TT;TP;>;"
    iget-object v0, p0, Lamigo/preference/AmigoGenericInflater;->mDefaultPackage:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lamigo/preference/AmigoGenericInflater;->createItem(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onMergeRoots(Lamigo/preference/AmigoGenericInflater$Parent;ZLamigo/preference/AmigoGenericInflater$Parent;)Lamigo/preference/AmigoGenericInflater$Parent;
    .locals 0
    .param p2, "attachToGivenRoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;ZTP;)TP;"
        }
    .end annotation

    .prologue
    .line 504
    .local p0, "this":Lamigo/preference/AmigoGenericInflater;, "Lamigo/preference/AmigoGenericInflater<TT;TP;>;"
    .local p1, "givenRoot":Lamigo/preference/AmigoGenericInflater$Parent;, "TP;"
    .local p3, "xmlRoot":Lamigo/preference/AmigoGenericInflater$Parent;, "TP;"
    return-object p3
.end method

.method public setDefaultPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultPackage"    # Ljava/lang/String;

    .prologue
    .line 121
    .local p0, "this":Lamigo/preference/AmigoGenericInflater;, "Lamigo/preference/AmigoGenericInflater<TT;TP;>;"
    iput-object p1, p0, Lamigo/preference/AmigoGenericInflater;->mDefaultPackage:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setFactory(Lamigo/preference/AmigoGenericInflater$Factory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lamigo/preference/AmigoGenericInflater$Factory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lamigo/preference/AmigoGenericInflater;, "Lamigo/preference/AmigoGenericInflater<TT;TP;>;"
    .local p1, "factory":Lamigo/preference/AmigoGenericInflater$Factory;, "Lamigo/preference/AmigoGenericInflater$Factory<TT;>;"
    iget-boolean v0, p0, Lamigo/preference/AmigoGenericInflater;->mFactorySet:Z

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A factory has already been set on this inflater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    if-nez p1, :cond_1

    .line 171
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Given factory can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/preference/AmigoGenericInflater;->mFactorySet:Z

    .line 174
    iget-object v0, p0, Lamigo/preference/AmigoGenericInflater;->mFactory:Lamigo/preference/AmigoGenericInflater$Factory;

    if-nez v0, :cond_2

    .line 175
    iput-object p1, p0, Lamigo/preference/AmigoGenericInflater;->mFactory:Lamigo/preference/AmigoGenericInflater$Factory;

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_2
    new-instance v0, Lamigo/preference/AmigoGenericInflater$FactoryMerger;

    iget-object v1, p0, Lamigo/preference/AmigoGenericInflater;->mFactory:Lamigo/preference/AmigoGenericInflater$Factory;

    invoke-direct {v0, p1, v1}, Lamigo/preference/AmigoGenericInflater$FactoryMerger;-><init>(Lamigo/preference/AmigoGenericInflater$Factory;Lamigo/preference/AmigoGenericInflater$Factory;)V

    iput-object v0, p0, Lamigo/preference/AmigoGenericInflater;->mFactory:Lamigo/preference/AmigoGenericInflater$Factory;

    goto :goto_0
.end method
