.class public Lamigo/preference/NativePreferenceManager;
.super Ljava/lang/Object;
.source "NativePreferenceManager.java"


# static fields
.field private static mAnalyzeNativePreferenceXml:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lamigo/preference/NativePreferenceManager;->mAnalyzeNativePreferenceXml:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static getAnalyzeNativePreferenceXml()Z
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lamigo/preference/NativePreferenceManager;->mAnalyzeNativePreferenceXml:Z

    return v0
.end method

.method public static getAttributeStringArrayValue(Landroid/content/Context;Landroid/util/AttributeSet;I)[Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "index"    # I

    .prologue
    .line 31
    invoke-interface {p1, p2}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "mAttrStr":Ljava/lang/String;
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 36
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAttributeStringValue(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "index"    # I

    .prologue
    .line 22
    invoke-interface {p1, p2}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "mAttrStr":Ljava/lang/String;
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    .end local v0    # "mAttrStr":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static setAnalyzeNativePreferenceXml(Z)V
    .locals 0
    .param p0, "isNativePreferenceXml"    # Z

    .prologue
    .line 14
    sput-boolean p0, Lamigo/preference/NativePreferenceManager;->mAnalyzeNativePreferenceXml:Z

    .line 15
    return-void
.end method
