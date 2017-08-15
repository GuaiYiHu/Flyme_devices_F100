.class Lamigo/preference/AmigoPreferenceFragment$1;
.super Landroid/os/Handler;
.source "AmigoPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/preference/AmigoPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/preference/AmigoPreferenceFragment;


# direct methods
.method constructor <init>(Lamigo/preference/AmigoPreferenceFragment;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lamigo/preference/AmigoPreferenceFragment$1;->this$0:Lamigo/preference/AmigoPreferenceFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 46
    :goto_0
    return-void

    .line 43
    :pswitch_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceFragment$1;->this$0:Lamigo/preference/AmigoPreferenceFragment;

    # invokes: Lamigo/preference/AmigoPreferenceFragment;->bindPreferences()V
    invoke-static {v0}, Lamigo/preference/AmigoPreferenceFragment;->access$000(Lamigo/preference/AmigoPreferenceFragment;)V

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
