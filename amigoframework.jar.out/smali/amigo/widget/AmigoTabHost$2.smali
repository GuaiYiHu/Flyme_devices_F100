.class Lamigo/widget/AmigoTabHost$2;
.super Ljava/lang/Object;
.source "AmigoTabHost.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoTabHost;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoTabHost;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoTabHost;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lamigo/widget/AmigoTabHost$2;->this$0:Lamigo/widget/AmigoTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 106
    sparse-switch p2, :sswitch_data_0

    .line 116
    iget-object v0, p0, Lamigo/widget/AmigoTabHost$2;->this$0:Lamigo/widget/AmigoTabHost;

    # getter for: Lamigo/widget/AmigoTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lamigo/widget/AmigoTabHost;->access$000(Lamigo/widget/AmigoTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 117
    iget-object v0, p0, Lamigo/widget/AmigoTabHost$2;->this$0:Lamigo/widget/AmigoTabHost;

    # getter for: Lamigo/widget/AmigoTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lamigo/widget/AmigoTabHost;->access$000(Lamigo/widget/AmigoTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 113
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
