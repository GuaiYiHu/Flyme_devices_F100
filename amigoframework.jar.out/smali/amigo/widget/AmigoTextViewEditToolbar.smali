.class Lamigo/widget/AmigoTextViewEditToolbar;
.super Lamigo/widget/AmigoTextViewToolbar;
.source "AmigoTextViewEditToolbar.java"


# static fields
.field private static final ID_COPY:I = 0x1020021

.field private static final ID_CUT:I = 0x1020020

.field private static final ID_SELECT_ALL:I = 0x102001f

.field private static final ID_START_SELECTING_TEXT:I = 0x1020028

.field private static final ID_SWITCH_INPUT_METHOD:I = 0x1020024

.field static final LOG_TAG:Ljava/lang/String; = "GN_FW_GNTextViewEditToolbar"


# instance fields
.field private final ID_COPY_STR:I

.field private final ID_CUT_STR:I

.field private final ID_SELECT_ALL_STR:I

.field private final ID_START_SELECTING_TEXT_STR:I

.field private final ID_SWITCH_INPUT_METHOD_STR:I

.field private mItemCopy:Landroid/widget/TextView;

.field private mItemCut:Landroid/widget/TextView;

.field private mItemInputMethod:Landroid/widget/TextView;

.field private mItemSelectAll:Landroid/widget/TextView;

.field private mItemStartSelect:Landroid/widget/TextView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoEditText;)V
    .locals 1
    .param p1, "hostView"    # Lamigo/widget/AmigoEditText;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lamigo/widget/AmigoTextViewToolbar;-><init>(Lamigo/widget/AmigoEditText;)V

    .line 29
    const v0, 0x9090006

    iput v0, p0, Lamigo/widget/AmigoTextViewEditToolbar;->ID_SELECT_ALL_STR:I

    .line 30
    const v0, 0x9090007

    iput v0, p0, Lamigo/widget/AmigoTextViewEditToolbar;->ID_START_SELECTING_TEXT_STR:I

    .line 31
    const v0, 0x9090005

    iput v0, p0, Lamigo/widget/AmigoTextViewEditToolbar;->ID_CUT_STR:I

    .line 32
    const v0, 0x9090003

    iput v0, p0, Lamigo/widget/AmigoTextViewEditToolbar;->ID_COPY_STR:I

    .line 33
    const v0, 0x9090008

    iput v0, p0, Lamigo/widget/AmigoTextViewEditToolbar;->ID_SWITCH_INPUT_METHOD_STR:I

    .line 44
    new-instance v0, Lamigo/widget/AmigoTextViewEditToolbar$1;

    invoke-direct {v0, p0}, Lamigo/widget/AmigoTextViewEditToolbar$1;-><init>(Lamigo/widget/AmigoTextViewEditToolbar;)V

    iput-object v0, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 67
    invoke-virtual {p0}, Lamigo/widget/AmigoTextViewEditToolbar;->initToolbarItem()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lamigo/widget/AmigoTextViewEditToolbar;I)Z
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoTextViewEditToolbar;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lamigo/widget/AmigoTextViewEditToolbar;->onItemAction(I)Z

    move-result v0

    return v0
.end method

.method private onItemAction(I)Z
    .locals 14
    .param p1, "id"    # I

    .prologue
    .line 180
    iget-object v11, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v11}, Lamigo/widget/AmigoEditText;->getText()Landroid/text/Editable;

    move-result-object v9

    .line 181
    .local v9, "text":Ljava/lang/CharSequence;
    move-object v10, v9

    .line 183
    .local v10, "transformed":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 184
    .local v5, "min":I
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 185
    .local v3, "max":I
    iget-object v11, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v11}, Lamigo/widget/AmigoEditText;->isFocused()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 186
    iget-object v11, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v11}, Lamigo/widget/AmigoEditText;->getSelectionStart()I

    move-result v8

    .line 187
    .local v8, "selStart":I
    iget-object v11, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v11}, Lamigo/widget/AmigoEditText;->getSelectionEnd()I

    move-result v7

    .line 188
    .local v7, "selEnd":I
    const/4 v11, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 189
    const/4 v11, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 192
    .end local v7    # "selEnd":I
    .end local v8    # "selStart":I
    :cond_0
    iget-object v11, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v11}, Lamigo/widget/AmigoEditText;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "clipboard"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 196
    .local v0, "clip":Landroid/content/ClipboardManager;
    packed-switch p1, :pswitch_data_0

    .line 246
    :pswitch_0
    const/4 v11, 0x0

    .end local v9    # "text":Ljava/lang/CharSequence;
    :goto_0
    return v11

    .restart local v9    # "text":Ljava/lang/CharSequence;
    :pswitch_1
    move-object v11, v9

    .line 198
    check-cast v11, Landroid/text/Spannable;

    const/4 v12, 0x0

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v13

    invoke-static {v11, v12, v13}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 199
    iget-object v11, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    const/4 v12, 0x0

    iput v12, v11, Lamigo/widget/AmigoEditText;->mStart:I

    .line 200
    iget-object v11, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v12

    iput v12, v11, Lamigo/widget/AmigoEditText;->mEnd:I

    .line 201
    iget-object v11, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v11}, Lamigo/widget/AmigoEditText;->startTextSelectionMode()Z

    .line 202
    const/4 v11, 0x1

    goto :goto_0

    .line 204
    :pswitch_2
    iget-object v11, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v11}, Lamigo/widget/AmigoEditText;->startTextSelectionMode()Z

    .line 205
    const/4 v11, 0x1

    goto :goto_0

    .line 207
    :pswitch_3
    iget-object v11, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v11}, Lamigo/widget/AmigoEditText;->getSelectionStart()I

    move-result v1

    .line 208
    .local v1, "end":I
    invoke-interface {v10, v5, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 210
    check-cast v9, Landroid/text/Editable;

    .end local v9    # "text":Ljava/lang/CharSequence;
    invoke-interface {v9, v5, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 212
    iget-object v11, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v11}, Lamigo/widget/AmigoEditText;->stopTextSelectionMode()V

    .line 215
    iget-object v11, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v11}, Lamigo/widget/AmigoEditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v4

    .line 216
    .local v4, "maxlength":I
    if-le v1, v4, :cond_1

    .line 217
    move v1, v4

    .line 220
    :cond_1
    iget-object v11, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v11}, Lamigo/widget/AmigoEditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-static {v11, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 222
    const/4 v11, 0x1

    goto :goto_0

    .line 224
    .end local v1    # "end":I
    .end local v4    # "maxlength":I
    .restart local v9    # "text":Ljava/lang/CharSequence;
    :pswitch_4
    invoke-interface {v10, v5, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v11, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v11}, Lamigo/widget/AmigoEditText;->stopTextSelectionMode()V

    .line 226
    const/4 v11, 0x1

    goto :goto_0

    .line 228
    :pswitch_5
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 229
    .local v6, "paste":Ljava/lang/CharSequence;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_2

    move-object v11, v9

    .line 230
    check-cast v11, Landroid/text/Spannable;

    invoke-static {v11, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 232
    check-cast v9, Landroid/text/Editable;

    .end local v9    # "text":Ljava/lang/CharSequence;
    invoke-interface {v9, v5, v3, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 234
    iget-object v11, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v11}, Lamigo/widget/AmigoEditText;->stopTextSelectionMode()V

    .line 236
    :cond_2
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 238
    .end local v6    # "paste":Ljava/lang/CharSequence;
    .restart local v9    # "text":Ljava/lang/CharSequence;
    :pswitch_6
    iget-object v11, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    instance-of v11, v11, Lamigo/widget/AmigoExtractEditText;

    if-nez v11, :cond_3

    .line 239
    iget-object v11, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mContext:Landroid/content/Context;

    const-string v12, "input_method"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 240
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_3

    .line 241
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 244
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected initToolbarItem()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Lamigo/widget/AmigoTextViewToolbar;->initToolbarItem()V

    .line 79
    const v0, 0x102001f

    const v1, 0x9090006

    invoke-virtual {p0, v0, v1}, Lamigo/widget/AmigoTextViewEditToolbar;->initToolbarItem(II)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mItemSelectAll:Landroid/widget/TextView;

    .line 80
    const v0, 0x1020028

    const v1, 0x9090007

    invoke-virtual {p0, v0, v1}, Lamigo/widget/AmigoTextViewEditToolbar;->initToolbarItem(II)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mItemStartSelect:Landroid/widget/TextView;

    .line 81
    const v0, 0x1020021

    const v1, 0x9090003

    invoke-virtual {p0, v0, v1}, Lamigo/widget/AmigoTextViewEditToolbar;->initToolbarItem(II)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mItemCopy:Landroid/widget/TextView;

    .line 82
    const v0, 0x1020020

    const v1, 0x9090005

    invoke-virtual {p0, v0, v1}, Lamigo/widget/AmigoTextViewEditToolbar;->initToolbarItem(II)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mItemCut:Landroid/widget/TextView;

    .line 83
    const v0, 0x1020024

    const v1, 0x9090008

    invoke-virtual {p0, v0, v1}, Lamigo/widget/AmigoTextViewEditToolbar;->initToolbarItem(II)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mItemInputMethod:Landroid/widget/TextView;

    .line 84
    return-void
.end method

.method protected updateToolbarItems()V
    .locals 5

    .prologue
    .line 127
    iget-object v3, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mToolbarGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 129
    iget-object v3, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v3}, Lamigo/widget/AmigoEditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v3

    instance-of v1, v3, Landroid/text/method/PasswordTransformationMethod;

    .line 130
    .local v1, "passwordTransformed":Z
    iget-object v3, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v3}, Lamigo/widget/AmigoEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 132
    .local v2, "text":Ljava/lang/CharSequence;
    iget-object v3, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v3}, Lamigo/widget/AmigoEditText;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    .line 135
    .local v0, "hasClip":Z
    iget-object v3, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v3}, Lamigo/widget/AmigoEditText;->hasSelection()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 136
    if-nez v1, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    instance-of v3, v2, Landroid/text/Editable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v3}, Lamigo/widget/AmigoEditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 139
    iget-object v3, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mToolbarGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mItemCut:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 142
    :cond_0
    if-nez v1, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 143
    iget-object v3, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mToolbarGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mItemCopy:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 146
    :cond_1
    instance-of v3, v2, Landroid/text/Editable;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v3}, Lamigo/widget/AmigoEditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v3}, Lamigo/widget/AmigoEditText;->getSelectionStart()I

    move-result v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v3}, Lamigo/widget/AmigoEditText;->getSelectionEnd()I

    move-result v3

    if-ltz v3, :cond_2

    if-eqz v0, :cond_2

    .line 150
    iget-object v3, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mToolbarGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mItemPaste:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 177
    :cond_2
    :goto_0
    return-void

    .line 153
    :cond_3
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 154
    iget-object v3, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v3}, Lamigo/widget/AmigoEditText;->isSelectionToolEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 155
    if-nez v1, :cond_4

    .line 156
    iget-object v3, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mToolbarGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mItemStartSelect:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 159
    :cond_4
    iget-object v3, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mToolbarGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mItemSelectAll:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 163
    :cond_5
    instance-of v3, v2, Landroid/text/Editable;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v3}, Lamigo/widget/AmigoEditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v3}, Lamigo/widget/AmigoEditText;->getSelectionStart()I

    move-result v3

    if-ltz v3, :cond_6

    iget-object v3, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v3}, Lamigo/widget/AmigoEditText;->getSelectionEnd()I

    move-result v3

    if-ltz v3, :cond_6

    if-eqz v0, :cond_6

    .line 167
    iget-object v3, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mToolbarGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mItemPaste:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 170
    :cond_6
    iget-object v3, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v3}, Lamigo/widget/AmigoEditText;->isImSwitcherEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v3}, Lamigo/widget/AmigoEditText;->isInputMethodTarget()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 174
    iget-object v3, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mToolbarGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lamigo/widget/AmigoTextViewEditToolbar;->mItemInputMethod:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected updateToolbarItemsEx()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method
