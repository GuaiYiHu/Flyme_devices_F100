.class public interface abstract Landroid/os/amigoserver/IAmigoServerManager;
.super Ljava/lang/Object;
.source "IAmigoServerManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/amigoserver/IAmigoServerManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getNodeContent(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getNodeState(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setNodeState(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
