.class Lamigo/widget/AmigoSearchView$3;
.super Ljava/lang/Object;
.source "AmigoSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoSearchView;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoSearchView;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lamigo/widget/AmigoSearchView$3;->this$0:Lamigo/widget/AmigoSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lamigo/widget/AmigoSearchView$3;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v0}, Lamigo/widget/AmigoSearchView;->access$000(Lamigo/widget/AmigoSearchView;)Landroid/widget/CursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoSearchView$3;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v0}, Lamigo/widget/AmigoSearchView;->access$000(Lamigo/widget/AmigoSearchView;)Landroid/widget/CursorAdapter;

    move-result-object v0

    instance-of v0, v0, Lamigo/widget/AmigoSuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lamigo/widget/AmigoSearchView$3;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v0}, Lamigo/widget/AmigoSearchView;->access$000(Lamigo/widget/AmigoSearchView;)Landroid/widget/CursorAdapter;

    move-result-object v0

    check-cast v0, Lamigo/widget/AmigoSuggestionsAdapter;

    invoke-virtual {v0}, Lamigo/widget/AmigoSuggestionsAdapter;->close()V

    .line 169
    :cond_0
    return-void
.end method
