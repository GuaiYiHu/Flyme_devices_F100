.class public final enum Lcom/android/server/se/mime/HttpMultipartMode;
.super Ljava/lang/Enum;
.source "HttpMultipartMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/se/mime/HttpMultipartMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/se/mime/HttpMultipartMode;

.field public static final enum BROWSER_COMPATIBLE:Lcom/android/server/se/mime/HttpMultipartMode;

.field public static final enum STRICT:Lcom/android/server/se/mime/HttpMultipartMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/android/server/se/mime/HttpMultipartMode;

    const-string v1, "STRICT"

    invoke-direct {v0, v1, v2}, Lcom/android/server/se/mime/HttpMultipartMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/se/mime/HttpMultipartMode;->STRICT:Lcom/android/server/se/mime/HttpMultipartMode;

    .line 40
    new-instance v0, Lcom/android/server/se/mime/HttpMultipartMode;

    const-string v1, "BROWSER_COMPATIBLE"

    invoke-direct {v0, v1, v3}, Lcom/android/server/se/mime/HttpMultipartMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/se/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lcom/android/server/se/mime/HttpMultipartMode;

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/se/mime/HttpMultipartMode;

    sget-object v1, Lcom/android/server/se/mime/HttpMultipartMode;->STRICT:Lcom/android/server/se/mime/HttpMultipartMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/se/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lcom/android/server/se/mime/HttpMultipartMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/se/mime/HttpMultipartMode;->$VALUES:[Lcom/android/server/se/mime/HttpMultipartMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/se/mime/HttpMultipartMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/android/server/se/mime/HttpMultipartMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/se/mime/HttpMultipartMode;

    return-object v0
.end method

.method public static values()[Lcom/android/server/se/mime/HttpMultipartMode;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/server/se/mime/HttpMultipartMode;->$VALUES:[Lcom/android/server/se/mime/HttpMultipartMode;

    invoke-virtual {v0}, [Lcom/android/server/se/mime/HttpMultipartMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/se/mime/HttpMultipartMode;

    return-object v0
.end method
