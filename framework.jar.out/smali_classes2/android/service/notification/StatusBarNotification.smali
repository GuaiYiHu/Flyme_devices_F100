.class public Landroid/service/notification/StatusBarNotification;
.super Ljava/lang/Object;
.source "StatusBarNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field static DI_ON:Z


# instance fields
.field private final groupKey:Ljava/lang/String;

.field private final id:I

.field private final initialPid:I

.field private final key:Ljava/lang/String;

.field private final notification:Landroid/app/Notification;

.field private final opPkg:Ljava/lang/String;

.field private final pkg:Ljava/lang/String;

.field private final postTime:J

.field private final score:I

.field private final tag:Ljava/lang/String;

.field private final uid:I

.field private final user:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "ro.gn.amigo.clone.support"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/service/notification/StatusBarNotification;->DI_ON:Z

    .line 149
    new-instance v0, Landroid/service/notification/StatusBarNotification$1;

    invoke-direct {v0}, Landroid/service/notification/StatusBarNotification$1;-><init>()V

    sput-object v0, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification;->id:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    .line 86
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification;->score:I

    .line 89
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0, p1}, Landroid/app/Notification;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    .line 90
    invoke-static {p1}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    .line 92
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->key()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->groupKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    .line 94
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;)V
    .locals 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "initialPid"    # I
    .param p7, "score"    # I
    .param p8, "notification"    # Landroid/app/Notification;
    .param p9, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;J)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;J)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "initialPid"    # I
    .param p7, "score"    # I
    .param p8, "notification"    # Landroid/app/Notification;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "postTime"    # J

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 61
    :cond_0
    if-nez p8, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 63
    :cond_1
    iput-object p1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    .line 65
    iput p3, p0, Landroid/service/notification/StatusBarNotification;->id:I

    .line 66
    iput-object p4, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    .line 67
    iput p5, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    .line 68
    iput p6, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    .line 69
    iput p7, p0, Landroid/service/notification/StatusBarNotification;->score:I

    .line 70
    iput-object p8, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    .line 71
    iput-object p9, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    .line 72
    iput-wide p10, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    .line 73
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->key()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->groupKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    .line 75
    return-void
.end method

.method private groupKey()Ljava/lang/String;
    .locals 5

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "group":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "sortKey":Ljava/lang/String;
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 118
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    .line 120
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->priority:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "g:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private key()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    sget-boolean v0, Landroid/service/notification/StatusBarNotification;->DI_ON:Z

    if-eqz v0, :cond_1

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/StatusBarNotification;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->isClone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_1
    return-object v0

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/StatusBarNotification;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public clone()Landroid/service/notification/StatusBarNotification;
    .locals 12

    .prologue
    .line 176
    new-instance v0, Landroid/service/notification/StatusBarNotification;

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    iget v3, p0, Landroid/service/notification/StatusBarNotification;->id:I

    iget-object v4, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    iget v5, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    iget v6, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    iget v7, p0, Landroid/service/notification/StatusBarNotification;->score:I

    iget-object v8, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v8}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v8

    iget-object v9, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    iget-wide v10, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    invoke-direct/range {v0 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;J)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public cloneLight()Landroid/service/notification/StatusBarNotification;
    .locals 12

    .prologue
    .line 167
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    .line 168
    .local v8, "no":Landroid/app/Notification;
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 169
    new-instance v0, Landroid/service/notification/StatusBarNotification;

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    iget v3, p0, Landroid/service/notification/StatusBarNotification;->id:I

    iget-object v4, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    iget v5, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    iget v6, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    iget v7, p0, Landroid/service/notification/StatusBarNotification;->score:I

    iget-object v9, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    iget-wide v10, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    invoke-direct/range {v0 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;J)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->id:I

    return v0
.end method

.method public getInitialPid()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    return-object v0
.end method

.method public getOpPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getPostTime()J
    .locals 2

    .prologue
    .line 262
    iget-wide v0, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    return-wide v0
.end method

.method public getScore()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->score:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    return v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public isClearable()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClone()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->isClone()Z

    move-result v0

    return v0
.end method

.method public isOngoing()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 183
    const-string v0, "StatusBarNotification(pkg=%s user=%s id=%d tag=%s score=%d key=%s: %s)"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Landroid/service/notification/StatusBarNotification;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Landroid/service/notification/StatusBarNotification;->score:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 127
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    :goto_0
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->score:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v0, p1, p2}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 140
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, p2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 142
    iget-wide v0, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 143
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
