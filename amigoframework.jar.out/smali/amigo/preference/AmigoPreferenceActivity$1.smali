.class Lamigo/preference/AmigoPreferenceActivity$1;
.super Landroid/os/Handler;
.source "AmigoPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/preference/AmigoPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/preference/AmigoPreferenceActivity;


# direct methods
.method constructor <init>(Lamigo/preference/AmigoPreferenceActivity;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lamigo/preference/AmigoPreferenceActivity$1;->this$0:Lamigo/preference/AmigoPreferenceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 206
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 208
    :pswitch_0
    iget-object v3, p0, Lamigo/preference/AmigoPreferenceActivity$1;->this$0:Lamigo/preference/AmigoPreferenceActivity;

    # invokes: Lamigo/preference/AmigoPreferenceActivity;->bindPreferences()V
    invoke-static {v3}, Lamigo/preference/AmigoPreferenceActivity;->access$000(Lamigo/preference/AmigoPreferenceActivity;)V

    goto :goto_0

    .line 211
    :pswitch_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lamigo/preference/AmigoPreferenceActivity$1;->this$0:Lamigo/preference/AmigoPreferenceActivity;

    # getter for: Lamigo/preference/AmigoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;
    invoke-static {v3}, Lamigo/preference/AmigoPreferenceActivity;->access$100(Lamigo/preference/AmigoPreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 212
    .local v2, "oldHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lamigo/preference/AmigoPreferenceActivity$Header;>;"
    iget-object v3, p0, Lamigo/preference/AmigoPreferenceActivity$1;->this$0:Lamigo/preference/AmigoPreferenceActivity;

    # getter for: Lamigo/preference/AmigoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;
    invoke-static {v3}, Lamigo/preference/AmigoPreferenceActivity;->access$100(Lamigo/preference/AmigoPreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 213
    iget-object v3, p0, Lamigo/preference/AmigoPreferenceActivity$1;->this$0:Lamigo/preference/AmigoPreferenceActivity;

    iget-object v4, p0, Lamigo/preference/AmigoPreferenceActivity$1;->this$0:Lamigo/preference/AmigoPreferenceActivity;

    # getter for: Lamigo/preference/AmigoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;
    invoke-static {v4}, Lamigo/preference/AmigoPreferenceActivity;->access$100(Lamigo/preference/AmigoPreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lamigo/preference/AmigoPreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 214
    iget-object v3, p0, Lamigo/preference/AmigoPreferenceActivity$1;->this$0:Lamigo/preference/AmigoPreferenceActivity;

    invoke-virtual {v3}, Lamigo/preference/AmigoPreferenceActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/BaseAdapter;

    if-eqz v3, :cond_1

    .line 215
    iget-object v3, p0, Lamigo/preference/AmigoPreferenceActivity$1;->this$0:Lamigo/preference/AmigoPreferenceActivity;

    invoke-virtual {v3}, Lamigo/preference/AmigoPreferenceActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 217
    :cond_1
    iget-object v3, p0, Lamigo/preference/AmigoPreferenceActivity$1;->this$0:Lamigo/preference/AmigoPreferenceActivity;

    invoke-virtual {v3}, Lamigo/preference/AmigoPreferenceActivity;->onGetNewHeader()Lamigo/preference/AmigoPreferenceActivity$Header;

    move-result-object v0

    .line 218
    .local v0, "header":Lamigo/preference/AmigoPreferenceActivity$Header;
    if-eqz v0, :cond_3

    iget-object v3, v0, Lamigo/preference/AmigoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 219
    iget-object v3, p0, Lamigo/preference/AmigoPreferenceActivity$1;->this$0:Lamigo/preference/AmigoPreferenceActivity;

    invoke-virtual {v3, v0, v2}, Lamigo/preference/AmigoPreferenceActivity;->findBestMatchingHeader(Lamigo/preference/AmigoPreferenceActivity$Header;Ljava/util/ArrayList;)Lamigo/preference/AmigoPreferenceActivity$Header;

    move-result-object v1

    .line 220
    .local v1, "mappedHeader":Lamigo/preference/AmigoPreferenceActivity$Header;
    if-eqz v1, :cond_2

    iget-object v3, p0, Lamigo/preference/AmigoPreferenceActivity$1;->this$0:Lamigo/preference/AmigoPreferenceActivity;

    # getter for: Lamigo/preference/AmigoPreferenceActivity;->mCurHeader:Lamigo/preference/AmigoPreferenceActivity$Header;
    invoke-static {v3}, Lamigo/preference/AmigoPreferenceActivity;->access$200(Lamigo/preference/AmigoPreferenceActivity;)Lamigo/preference/AmigoPreferenceActivity$Header;

    move-result-object v3

    if-eq v3, v1, :cond_0

    .line 221
    :cond_2
    iget-object v3, p0, Lamigo/preference/AmigoPreferenceActivity$1;->this$0:Lamigo/preference/AmigoPreferenceActivity;

    invoke-virtual {v3, v0}, Lamigo/preference/AmigoPreferenceActivity;->switchToHeader(Lamigo/preference/AmigoPreferenceActivity$Header;)V

    goto :goto_0

    .line 223
    .end local v1    # "mappedHeader":Lamigo/preference/AmigoPreferenceActivity$Header;
    :cond_3
    iget-object v3, p0, Lamigo/preference/AmigoPreferenceActivity$1;->this$0:Lamigo/preference/AmigoPreferenceActivity;

    # getter for: Lamigo/preference/AmigoPreferenceActivity;->mCurHeader:Lamigo/preference/AmigoPreferenceActivity$Header;
    invoke-static {v3}, Lamigo/preference/AmigoPreferenceActivity;->access$200(Lamigo/preference/AmigoPreferenceActivity;)Lamigo/preference/AmigoPreferenceActivity$Header;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 224
    iget-object v3, p0, Lamigo/preference/AmigoPreferenceActivity$1;->this$0:Lamigo/preference/AmigoPreferenceActivity;

    iget-object v4, p0, Lamigo/preference/AmigoPreferenceActivity$1;->this$0:Lamigo/preference/AmigoPreferenceActivity;

    # getter for: Lamigo/preference/AmigoPreferenceActivity;->mCurHeader:Lamigo/preference/AmigoPreferenceActivity$Header;
    invoke-static {v4}, Lamigo/preference/AmigoPreferenceActivity;->access$200(Lamigo/preference/AmigoPreferenceActivity;)Lamigo/preference/AmigoPreferenceActivity$Header;

    move-result-object v4

    iget-object v5, p0, Lamigo/preference/AmigoPreferenceActivity$1;->this$0:Lamigo/preference/AmigoPreferenceActivity;

    # getter for: Lamigo/preference/AmigoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;
    invoke-static {v5}, Lamigo/preference/AmigoPreferenceActivity;->access$100(Lamigo/preference/AmigoPreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lamigo/preference/AmigoPreferenceActivity;->findBestMatchingHeader(Lamigo/preference/AmigoPreferenceActivity$Header;Ljava/util/ArrayList;)Lamigo/preference/AmigoPreferenceActivity$Header;

    move-result-object v1

    .line 225
    .restart local v1    # "mappedHeader":Lamigo/preference/AmigoPreferenceActivity$Header;
    if-eqz v1, :cond_0

    .line 226
    iget-object v3, p0, Lamigo/preference/AmigoPreferenceActivity$1;->this$0:Lamigo/preference/AmigoPreferenceActivity;

    invoke-virtual {v3, v1}, Lamigo/preference/AmigoPreferenceActivity;->setSelectedHeader(Lamigo/preference/AmigoPreferenceActivity$Header;)V

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
