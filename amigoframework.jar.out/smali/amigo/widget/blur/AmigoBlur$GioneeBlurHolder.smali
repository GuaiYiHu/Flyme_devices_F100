.class Lamigo/widget/blur/AmigoBlur$GioneeBlurHolder;
.super Ljava/lang/Object;
.source "AmigoBlur.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/blur/AmigoBlur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GioneeBlurHolder"
.end annotation


# static fields
.field private static sInstance:Lamigo/widget/blur/AmigoBlur;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lamigo/widget/blur/AmigoBlur;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lamigo/widget/blur/AmigoBlur;-><init>(Lamigo/widget/blur/AmigoBlur$1;)V

    sput-object v0, Lamigo/widget/blur/AmigoBlur$GioneeBlurHolder;->sInstance:Lamigo/widget/blur/AmigoBlur;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lamigo/widget/blur/AmigoBlur;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lamigo/widget/blur/AmigoBlur$GioneeBlurHolder;->sInstance:Lamigo/widget/blur/AmigoBlur;

    return-object v0
.end method
