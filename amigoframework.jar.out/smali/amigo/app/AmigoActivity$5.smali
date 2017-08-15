.class Lamigo/app/AmigoActivity$5;
.super Ljava/lang/Object;
.source "AmigoActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/app/AmigoActivity;
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
    .line 897
    iput-object p1, p0, Lamigo/app/AmigoActivity$5;->this$0:Lamigo/app/AmigoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 900
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 914
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 905
    :pswitch_0
    iget-object v0, p0, Lamigo/app/AmigoActivity$5;->this$0:Lamigo/app/AmigoActivity;

    # getter for: Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;
    invoke-static {v0}, Lamigo/app/AmigoActivity;->access$100(Lamigo/app/AmigoActivity;)Lamigo/widget/AmigoMagicBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/app/AmigoActivity$5;->this$0:Lamigo/app/AmigoActivity;

    # invokes: Lamigo/app/AmigoActivity;->isMagicbarExpand()Z
    invoke-static {v0}, Lamigo/app/AmigoActivity;->access$200(Lamigo/app/AmigoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lamigo/app/AmigoActivity$5;->this$0:Lamigo/app/AmigoActivity;

    invoke-virtual {v0, p1, p2}, Lamigo/app/AmigoActivity;->OnTransparentTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 908
    const/4 v0, 0x1

    goto :goto_0

    .line 900
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
