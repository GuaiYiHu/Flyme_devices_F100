.class Lamigo/preference/AmigoPreferenceFragment$2;
.super Ljava/lang/Object;
.source "AmigoPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 49
    iput-object p1, p0, Lamigo/preference/AmigoPreferenceFragment$2;->this$0:Lamigo/preference/AmigoPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceFragment$2;->this$0:Lamigo/preference/AmigoPreferenceFragment;

    # getter for: Lamigo/preference/AmigoPreferenceFragment;->mList:Lamigo/widget/AmigoListView;
    invoke-static {v0}, Lamigo/preference/AmigoPreferenceFragment;->access$100(Lamigo/preference/AmigoPreferenceFragment;)Lamigo/widget/AmigoListView;

    move-result-object v0

    iget-object v1, p0, Lamigo/preference/AmigoPreferenceFragment$2;->this$0:Lamigo/preference/AmigoPreferenceFragment;

    # getter for: Lamigo/preference/AmigoPreferenceFragment;->mList:Lamigo/widget/AmigoListView;
    invoke-static {v1}, Lamigo/preference/AmigoPreferenceFragment;->access$100(Lamigo/preference/AmigoPreferenceFragment;)Lamigo/widget/AmigoListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 52
    return-void
.end method
