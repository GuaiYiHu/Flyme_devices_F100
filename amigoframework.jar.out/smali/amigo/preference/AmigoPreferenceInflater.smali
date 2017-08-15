.class Lamigo/preference/AmigoPreferenceInflater;
.super Lamigo/preference/AmigoGenericInflater;
.source "AmigoPreferenceInflater.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamigo/preference/AmigoGenericInflater",
        "<",
        "Lamigo/preference/AmigoPreference;",
        "Lamigo/preference/AmigoPreferenceGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXTRA_TAG_NAME:Ljava/lang/String; = "extra"

.field private static final INTENT_TAG_NAME:Ljava/lang/String; = "intent"

.field private static final TAG:Ljava/lang/String; = "PreferenceInflater"


# instance fields
.field private mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;


# direct methods
.method constructor <init>(Lamigo/preference/AmigoGenericInflater;Lamigo/preference/AmigoPreferenceManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "preferenceManager"    # Lamigo/preference/AmigoPreferenceManager;
    .param p3, "newContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lamigo/preference/AmigoGenericInflater",
            "<",
            "Lamigo/preference/AmigoPreference;",
            "Lamigo/preference/AmigoPreferenceGroup;",
            ">;",
            "Lamigo/preference/AmigoPreferenceManager;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "original":Lamigo/preference/AmigoGenericInflater;, "Lamigo/preference/AmigoGenericInflater<Lamigo/preference/AmigoPreference;Lamigo/preference/AmigoPreferenceGroup;>;"
    invoke-direct {p0, p1, p3}, Lamigo/preference/AmigoGenericInflater;-><init>(Lamigo/preference/AmigoGenericInflater;Landroid/content/Context;)V

    .line 39
    invoke-direct {p0, p2}, Lamigo/preference/AmigoPreferenceInflater;->init(Lamigo/preference/AmigoPreferenceManager;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lamigo/preference/AmigoPreferenceManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceManager"    # Lamigo/preference/AmigoPreferenceManager;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lamigo/preference/AmigoGenericInflater;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0, p2}, Lamigo/preference/AmigoPreferenceInflater;->init(Lamigo/preference/AmigoPreferenceManager;)V

    .line 35
    return-void
.end method

.method private init(Lamigo/preference/AmigoPreferenceManager;)V
    .locals 1
    .param p1, "preferenceManager"    # Lamigo/preference/AmigoPreferenceManager;

    .prologue
    .line 48
    iput-object p1, p0, Lamigo/preference/AmigoPreferenceInflater;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    .line 49
    const-string v0, "amigo.preference."

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoPreferenceInflater;->setDefaultPackage(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Lamigo/preference/AmigoGenericInflater;
    .locals 2
    .param p1, "newContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lamigo/preference/AmigoGenericInflater",
            "<",
            "Lamigo/preference/AmigoPreference;",
            "Lamigo/preference/AmigoPreferenceGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lamigo/preference/AmigoPreferenceInflater;

    iget-object v1, p0, Lamigo/preference/AmigoPreferenceInflater;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-direct {v0, p0, v1, p1}, Lamigo/preference/AmigoPreferenceInflater;-><init>(Lamigo/preference/AmigoGenericInflater;Lamigo/preference/AmigoPreferenceManager;Landroid/content/Context;)V

    return-object v0
.end method

.method protected onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Lamigo/preference/AmigoPreference;Landroid/util/AttributeSet;)Z
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parentPreference"    # Lamigo/preference/AmigoPreference;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 55
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "tag":Ljava/lang/String;
    const-string v5, "intent"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 58
    const/4 v2, 0x0

    .line 61
    .local v2, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p1, p3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 69
    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {p2, v2}, Lamigo/preference/AmigoPreference;->setIntent(Landroid/content/Intent;)V

    .line 88
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v4

    .line 62
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Error parsing preference"

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 66
    throw v1

    .line 74
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v5, "extra"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 75
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "extra"

    invoke-virtual {p2}, Lamigo/preference/AmigoPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v5, v6, p3, v7}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 78
    :try_start_1
    invoke-static {p1}, Lcom/amigo/internal/util/AmigoXmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 79
    :catch_1
    move-exception v0

    .line 80
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Error parsing preference"

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 82
    .restart local v1    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 83
    throw v1

    .line 88
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z
    .locals 1
    .param p1, "x0"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 25
    check-cast p2, Lamigo/preference/AmigoPreference;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lamigo/preference/AmigoPreferenceInflater;->onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Lamigo/preference/AmigoPreference;Landroid/util/AttributeSet;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic onMergeRoots(Lamigo/preference/AmigoGenericInflater$Parent;ZLamigo/preference/AmigoGenericInflater$Parent;)Lamigo/preference/AmigoGenericInflater$Parent;
    .locals 1
    .param p1, "x0"    # Lamigo/preference/AmigoGenericInflater$Parent;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lamigo/preference/AmigoGenericInflater$Parent;

    .prologue
    .line 25
    check-cast p1, Lamigo/preference/AmigoPreferenceGroup;

    .end local p1    # "x0":Lamigo/preference/AmigoGenericInflater$Parent;
    check-cast p3, Lamigo/preference/AmigoPreferenceGroup;

    .end local p3    # "x2":Lamigo/preference/AmigoGenericInflater$Parent;
    invoke-virtual {p0, p1, p2, p3}, Lamigo/preference/AmigoPreferenceInflater;->onMergeRoots(Lamigo/preference/AmigoPreferenceGroup;ZLamigo/preference/AmigoPreferenceGroup;)Lamigo/preference/AmigoPreferenceGroup;

    move-result-object v0

    return-object v0
.end method

.method protected onMergeRoots(Lamigo/preference/AmigoPreferenceGroup;ZLamigo/preference/AmigoPreferenceGroup;)Lamigo/preference/AmigoPreferenceGroup;
    .locals 1
    .param p1, "givenRoot"    # Lamigo/preference/AmigoPreferenceGroup;
    .param p2, "attachToGivenRoot"    # Z
    .param p3, "xmlRoot"    # Lamigo/preference/AmigoPreferenceGroup;

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceInflater;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {p3, v0}, Lamigo/preference/AmigoPreferenceGroup;->onAttachedToHierarchy(Lamigo/preference/AmigoPreferenceManager;)V

    .line 100
    .end local p3    # "xmlRoot":Lamigo/preference/AmigoPreferenceGroup;
    :goto_0
    return-object p3

    .restart local p3    # "xmlRoot":Lamigo/preference/AmigoPreferenceGroup;
    :cond_0
    move-object p3, p1

    goto :goto_0
.end method
