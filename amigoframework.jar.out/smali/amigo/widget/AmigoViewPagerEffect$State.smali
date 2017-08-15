.class final enum Lamigo/widget/AmigoViewPagerEffect$State;
.super Ljava/lang/Enum;
.source "AmigoViewPagerEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoViewPagerEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lamigo/widget/AmigoViewPagerEffect$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lamigo/widget/AmigoViewPagerEffect$State;

.field public static final enum GOING_LEFT:Lamigo/widget/AmigoViewPagerEffect$State;

.field public static final enum GOING_RIGHT:Lamigo/widget/AmigoViewPagerEffect$State;

.field public static final enum IDLE:Lamigo/widget/AmigoViewPagerEffect$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lamigo/widget/AmigoViewPagerEffect$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lamigo/widget/AmigoViewPagerEffect$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lamigo/widget/AmigoViewPagerEffect$State;->IDLE:Lamigo/widget/AmigoViewPagerEffect$State;

    .line 33
    new-instance v0, Lamigo/widget/AmigoViewPagerEffect$State;

    const-string v1, "GOING_LEFT"

    invoke-direct {v0, v1, v3}, Lamigo/widget/AmigoViewPagerEffect$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lamigo/widget/AmigoViewPagerEffect$State;->GOING_LEFT:Lamigo/widget/AmigoViewPagerEffect$State;

    .line 34
    new-instance v0, Lamigo/widget/AmigoViewPagerEffect$State;

    const-string v1, "GOING_RIGHT"

    invoke-direct {v0, v1, v4}, Lamigo/widget/AmigoViewPagerEffect$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lamigo/widget/AmigoViewPagerEffect$State;->GOING_RIGHT:Lamigo/widget/AmigoViewPagerEffect$State;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lamigo/widget/AmigoViewPagerEffect$State;

    sget-object v1, Lamigo/widget/AmigoViewPagerEffect$State;->IDLE:Lamigo/widget/AmigoViewPagerEffect$State;

    aput-object v1, v0, v2

    sget-object v1, Lamigo/widget/AmigoViewPagerEffect$State;->GOING_LEFT:Lamigo/widget/AmigoViewPagerEffect$State;

    aput-object v1, v0, v3

    sget-object v1, Lamigo/widget/AmigoViewPagerEffect$State;->GOING_RIGHT:Lamigo/widget/AmigoViewPagerEffect$State;

    aput-object v1, v0, v4

    sput-object v0, Lamigo/widget/AmigoViewPagerEffect$State;->$VALUES:[Lamigo/widget/AmigoViewPagerEffect$State;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lamigo/widget/AmigoViewPagerEffect$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lamigo/widget/AmigoViewPagerEffect$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lamigo/widget/AmigoViewPagerEffect$State;

    return-object v0
.end method

.method public static values()[Lamigo/widget/AmigoViewPagerEffect$State;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lamigo/widget/AmigoViewPagerEffect$State;->$VALUES:[Lamigo/widget/AmigoViewPagerEffect$State;

    invoke-virtual {v0}, [Lamigo/widget/AmigoViewPagerEffect$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lamigo/widget/AmigoViewPagerEffect$State;

    return-object v0
.end method
