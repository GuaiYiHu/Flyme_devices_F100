.class public Lamigo/widget/AmigoWidgetVersion;
.super Ljava/lang/Object;
.source "AmigoWidgetVersion.java"


# static fields
.field private static mVersionNum:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "V5.0.3.p"

    sput-object v0, Lamigo/widget/AmigoWidgetVersion;->mVersionNum:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lamigo/widget/AmigoWidgetVersion;->mVersionNum:Ljava/lang/String;

    return-object v0
.end method
