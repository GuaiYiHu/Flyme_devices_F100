.class public abstract Landroid/os/IVibratorService$Stub;
.super Landroid/os/Binder;
.source "IVibratorService.java"

# interfaces
.implements Landroid/os/IVibratorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVibratorService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVibratorService"

.field static final TRANSACTION_cancelAmigoVibrate:I = 0x6

.field static final TRANSACTION_cancelVibrate:I = 0x4

.field static final TRANSACTION_hasVibrator:I = 0x1

.field static final TRANSACTION_isAmigoVibrator:I = 0x7

.field static final TRANSACTION_vibrate:I = 0x2

.field static final TRANSACTION_vibrateAmigoEffect:I = 0x8

.field static final TRANSACTION_vibrateAmigoEffectBundle:I = 0xa

.field static final TRANSACTION_vibrateAmigoEffectBundlePattern:I = 0xb

.field static final TRANSACTION_vibrateAmigoEffectPattern:I = 0x9

.field static final TRANSACTION_vibrateEx:I = 0x5

.field static final TRANSACTION_vibratePattern:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "android.os.IVibratorService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVibratorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "android.os.IVibratorService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IVibratorService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Landroid/os/IVibratorService;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Landroid/os/IVibratorService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IVibratorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 26
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 223
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 44
    :sswitch_0
    const-string v3, "android.os.IVibratorService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    const/4 v3, 0x1

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v3, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVibratorService$Stub;->hasVibrator()Z

    move-result v2

    .line 51
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    const/4 v3, 0x1

    goto :goto_0

    .line 52
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 57
    .end local v2    # "_result":Z
    :sswitch_2
    const-string v3, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 61
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 65
    .local v6, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 67
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .local v9, "_arg4":Landroid/os/IBinder;
    move-object/from16 v3, p0

    .line 68
    invoke-virtual/range {v3 .. v9}, Landroid/os/IVibratorService$Stub;->vibrate(ILjava/lang/String;JILandroid/os/IBinder;)V

    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    const/4 v3, 0x1

    goto :goto_0

    .line 74
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Landroid/os/IBinder;
    :sswitch_3
    const-string v3, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 78
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 80
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v6

    .line 82
    .local v6, "_arg2":[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 84
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 86
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .local v16, "_arg5":Landroid/os/IBinder;
    move-object/from16 v10, p0

    move v11, v4

    move-object v12, v5

    move-object v13, v6

    move v14, v8

    move v15, v9

    .line 87
    invoke-virtual/range {v10 .. v16}, Landroid/os/IVibratorService$Stub;->vibratePattern(ILjava/lang/String;[JIILandroid/os/IBinder;)V

    .line 88
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    const/4 v3, 0x1

    goto :goto_0

    .line 93
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":[J
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v16    # "_arg5":Landroid/os/IBinder;
    :sswitch_4
    const-string v3, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 96
    .local v4, "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IVibratorService$Stub;->cancelVibrate(Landroid/os/IBinder;)V

    .line 97
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 102
    .end local v4    # "_arg0":Landroid/os/IBinder;
    :sswitch_5
    const-string v3, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 106
    .local v4, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 107
    .local v5, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IVibratorService$Stub;->vibrateEx([BLandroid/os/IBinder;)V

    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 113
    .end local v4    # "_arg0":[B
    .end local v5    # "_arg1":Landroid/os/IBinder;
    :sswitch_6
    const-string v3, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 118
    .restart local v5    # "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IVibratorService$Stub;->cancelAmigoVibrate(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 124
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Landroid/os/IBinder;
    :sswitch_7
    const-string v3, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 127
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IVibratorService$Stub;->isAmigoVibrator(Ljava/lang/String;)Z

    move-result v2

    .line 128
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 129
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 134
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string v3, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 138
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 140
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 142
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 144
    .local v22, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 146
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .restart local v16    # "_arg5":Landroid/os/IBinder;
    move-object/from16 v18, p0

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v24, v9

    move-object/from16 v25, v16

    .line 147
    invoke-virtual/range {v18 .. v25}, Landroid/os/IVibratorService$Stub;->vibrateAmigoEffect(Ljava/lang/String;ILjava/lang/String;JILandroid/os/IBinder;)V

    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 153
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg4":I
    .end local v16    # "_arg5":Landroid/os/IBinder;
    .end local v22    # "_arg3":J
    :sswitch_9
    const-string v3, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 157
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 159
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 161
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v8

    .line 163
    .local v8, "_arg3":[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 165
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 167
    .local v16, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .local v17, "_arg6":Landroid/os/IBinder;
    move-object/from16 v10, p0

    move-object v11, v4

    move v12, v5

    move-object v13, v6

    move-object v14, v8

    move v15, v9

    .line 168
    invoke-virtual/range {v10 .. v17}, Landroid/os/IVibratorService$Stub;->vibrateAmigoEffectPattern(Ljava/lang/String;ILjava/lang/String;[JIILandroid/os/IBinder;)V

    .line 169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 174
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":[J
    .end local v9    # "_arg4":I
    .end local v16    # "_arg5":I
    .end local v17    # "_arg6":Landroid/os/IBinder;
    :sswitch_a
    const-string v3, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 183
    .local v4, "_arg0":Landroid/os/Bundle;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 185
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 187
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 189
    .restart local v22    # "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 191
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .local v16, "_arg5":Landroid/os/IBinder;
    move-object/from16 v18, p0

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v24, v9

    move-object/from16 v25, v16

    .line 192
    invoke-virtual/range {v18 .. v25}, Landroid/os/IVibratorService$Stub;->vibrateAmigoEffectBundle(Landroid/os/Bundle;ILjava/lang/String;JILandroid/os/IBinder;)V

    .line 193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 180
    .end local v4    # "_arg0":Landroid/os/Bundle;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg4":I
    .end local v16    # "_arg5":Landroid/os/IBinder;
    .end local v22    # "_arg3":J
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/os/Bundle;
    goto :goto_3

    .line 198
    .end local v4    # "_arg0":Landroid/os/Bundle;
    :sswitch_b
    const-string v3, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 201
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 207
    .restart local v4    # "_arg0":Landroid/os/Bundle;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 209
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 211
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v8

    .line 213
    .restart local v8    # "_arg3":[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 215
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 217
    .local v16, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .restart local v17    # "_arg6":Landroid/os/IBinder;
    move-object/from16 v10, p0

    move-object v11, v4

    move v12, v5

    move-object v13, v6

    move-object v14, v8

    move v15, v9

    .line 218
    invoke-virtual/range {v10 .. v17}, Landroid/os/IVibratorService$Stub;->vibrateAmigoEffectBundlePattern(Landroid/os/Bundle;ILjava/lang/String;[JIILandroid/os/IBinder;)V

    .line 219
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 204
    .end local v4    # "_arg0":Landroid/os/Bundle;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":[J
    .end local v9    # "_arg4":I
    .end local v16    # "_arg5":I
    .end local v17    # "_arg6":Landroid/os/IBinder;
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/os/Bundle;
    goto :goto_4

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
