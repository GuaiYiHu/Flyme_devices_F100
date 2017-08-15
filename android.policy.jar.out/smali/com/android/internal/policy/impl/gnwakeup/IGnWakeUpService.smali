.class public interface abstract Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpService;
.super Ljava/lang/Object;
.source "IGnWakeUpService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpService$Stub;
    }
.end annotation


# virtual methods
.method public abstract dissWakeUpAnim()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract showWakeUpAnim(ILcom/android/internal/policy/impl/gnwakeup/IGnWakeUpCallback;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
