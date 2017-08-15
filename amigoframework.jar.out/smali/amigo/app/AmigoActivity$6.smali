.class Lamigo/app/AmigoActivity$6;
.super Ljava/lang/Object;
.source "AmigoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/app/AmigoActivity;->invalidateOptionsMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/app/AmigoActivity;


# direct methods
.method constructor <init>(Lamigo/app/AmigoActivity;)V
    .locals 0

    .prologue
    .line 920
    iput-object p1, p0, Lamigo/app/AmigoActivity$6;->this$0:Lamigo/app/AmigoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lamigo/app/AmigoActivity$6;->this$0:Lamigo/app/AmigoActivity;

    invoke-virtual {v0}, Lamigo/app/AmigoActivity;->invalOptionsMenu()V

    .line 923
    return-void
.end method
