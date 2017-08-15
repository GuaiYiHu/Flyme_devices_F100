.class Lamigo/widget/AmigoEditText$GnTextWatcher;
.super Ljava/lang/Object;
.source "AmigoEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoEditText;


# direct methods
.method private constructor <init>(Lamigo/widget/AmigoEditText;)V
    .locals 0

    .prologue
    .line 1974
    iput-object p1, p0, Lamigo/widget/AmigoEditText$GnTextWatcher;->this$0:Lamigo/widget/AmigoEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lamigo/widget/AmigoEditText;Lamigo/widget/AmigoEditText$1;)V
    .locals 0
    .param p1, "x0"    # Lamigo/widget/AmigoEditText;
    .param p2, "x1"    # Lamigo/widget/AmigoEditText$1;

    .prologue
    .line 1974
    invoke-direct {p0, p1}, Lamigo/widget/AmigoEditText$GnTextWatcher;-><init>(Lamigo/widget/AmigoEditText;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    const/4 v2, 0x0

    .line 1976
    iget-object v1, p0, Lamigo/widget/AmigoEditText$GnTextWatcher;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v1}, Lamigo/widget/AmigoEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1979
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1980
    iget-object v1, p0, Lamigo/widget/AmigoEditText$GnTextWatcher;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v1, v2, v2, v2, v2}, Lamigo/widget/AmigoEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1981
    iget-object v1, p0, Lamigo/widget/AmigoEditText$GnTextWatcher;->this$0:Lamigo/widget/AmigoEditText;

    const/4 v2, 0x0

    # setter for: Lamigo/widget/AmigoEditText;->mDeletable:Z
    invoke-static {v1, v2}, Lamigo/widget/AmigoEditText;->access$902(Lamigo/widget/AmigoEditText;Z)Z

    .line 1983
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 1987
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 1991
    return-void
.end method
