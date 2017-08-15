.class Lamigo/widget/AmigoSuggestionsAdapter$1;
.super Ljava/lang/Object;
.source "AmigoSuggestionsAdapter.java"

# interfaces
.implements Landroid/widget/Filter$Delayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoSuggestionsAdapter;-><init>(Landroid/content/Context;Lamigo/widget/AmigoSearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPreviousLength:I

.field final synthetic this$0:Lamigo/widget/AmigoSuggestionsAdapter;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoSuggestionsAdapter;)V
    .locals 1

    .prologue
    .line 114
    iput-object p1, p0, Lamigo/widget/AmigoSuggestionsAdapter$1;->this$0:Lamigo/widget/AmigoSuggestionsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lamigo/widget/AmigoSuggestionsAdapter$1;->mPreviousLength:I

    return-void
.end method


# virtual methods
.method public getPostingDelay(Ljava/lang/CharSequence;)J
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    const-wide/16 v0, 0x0

    .line 119
    if-nez p1, :cond_0

    .line 123
    :goto_0
    return-wide v0

    .line 121
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget v3, p0, Lamigo/widget/AmigoSuggestionsAdapter$1;->mPreviousLength:I

    if-ge v2, v3, :cond_1

    const-wide/16 v0, 0x1f4

    .line 122
    .local v0, "delay":J
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, p0, Lamigo/widget/AmigoSuggestionsAdapter$1;->mPreviousLength:I

    goto :goto_0
.end method
