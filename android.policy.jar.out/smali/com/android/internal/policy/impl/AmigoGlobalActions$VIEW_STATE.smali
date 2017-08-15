.class final enum Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;
.super Ljava/lang/Enum;
.source "AmigoGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/AmigoGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "VIEW_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

.field public static final enum NONE:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

.field public static final enum REBOOT:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

.field public static final enum REBOOTING:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

.field public static final enum SHUTDOWN:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

.field public static final enum SHUTTINGDOWN:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    new-instance v0, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;->NONE:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    new-instance v0, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    const-string v1, "SHUTDOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;->SHUTDOWN:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    new-instance v0, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    const-string v1, "REBOOT"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;->REBOOT:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    new-instance v0, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    const-string v1, "SHUTTINGDOWN"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;->SHUTTINGDOWN:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    new-instance v0, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    const-string v1, "REBOOTING"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;->REBOOTING:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    .line 85
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    sget-object v1, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;->NONE:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;->SHUTDOWN:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;->REBOOT:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;->SHUTTINGDOWN:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;->REBOOTING:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;->$VALUES:[Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

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
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;->$VALUES:[Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    return-object v0
.end method
