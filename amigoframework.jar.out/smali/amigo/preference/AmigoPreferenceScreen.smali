.class public final Lamigo/preference/AmigoPreferenceScreen;
.super Lamigo/preference/AmigoPreferenceGroup;
.source "AmigoPreferenceScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/preference/AmigoPreferenceScreen$SavedState;
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mListView:Lamigo/widget/AmigoListView;

.field private mRootAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Lamigo/preference/AmigoPreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method private showDialog(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 153
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 154
    .local v1, "context":Landroid/content/Context;
    iget-object v5, p0, Lamigo/preference/AmigoPreferenceScreen;->mListView:Lamigo/widget/AmigoListView;

    if-eqz v5, :cond_0

    .line 155
    iget-object v5, p0, Lamigo/preference/AmigoPreferenceScreen;->mListView:Lamigo/widget/AmigoListView;

    invoke-virtual {v5, v6}, Lamigo/widget/AmigoListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    :cond_0
    const-string v5, "layout_inflater"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 160
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x903000b

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, "childPrefScreen":Landroid/view/View;
    const v5, 0x102000a

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lamigo/widget/AmigoListView;

    iput-object v5, p0, Lamigo/preference/AmigoPreferenceScreen;->mListView:Lamigo/widget/AmigoListView;

    .line 163
    iget-object v5, p0, Lamigo/preference/AmigoPreferenceScreen;->mListView:Lamigo/widget/AmigoListView;

    invoke-virtual {p0, v5}, Lamigo/preference/AmigoPreferenceScreen;->bind(Lamigo/widget/AmigoListView;)V

    .line 166
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 167
    .local v4, "title":Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    move-result v5

    invoke-direct {v2, v1, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lamigo/preference/AmigoPreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 168
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 169
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 173
    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 174
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 175
    if-eqz p1, :cond_1

    .line 176
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 180
    :cond_1
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceScreen;->getPreferenceManager()Lamigo/preference/AmigoPreferenceManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lamigo/preference/AmigoPreferenceManager;->addPreferencesScreen(Landroid/content/DialogInterface;)V

    .line 182
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 183
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getBackgroudColor_B1()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    :cond_2
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 188
    return-void

    .line 171
    :cond_3
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Lamigo/widget/AmigoListView;)V
    .locals 1
    .param p1, "listView"    # Lamigo/widget/AmigoListView;

    .prologue
    .line 133
    invoke-virtual {p1, p0}, Lamigo/widget/AmigoListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lamigo/widget/AmigoListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lamigo/widget/AmigoListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 140
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceScreen;->onAttachedToActivity()V

    .line 141
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceScreen;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceScreen;->onCreateRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    .line 112
    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceScreen;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lamigo/preference/AmigoPreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onCreateRootAdapter()Landroid/widget/ListAdapter;
    .locals 3

    .prologue
    .line 122
    new-instance v0, Lamigo/preference/AmigoPreferenceGroupAdapter;

    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lamigo/preference/AmigoPreferenceGroupAdapter;-><init>(Lamigo/preference/AmigoPreferenceGroup;Landroid/content/Context;Z)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 192
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceScreen;->getPreferenceManager()Lamigo/preference/AmigoPreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lamigo/preference/AmigoPreferenceManager;->removePreferencesScreen(Landroid/content/DialogInterface;)V

    .line 193
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 206
    instance-of v2, p1, Lamigo/widget/AmigoListView;

    if-eqz v2, :cond_0

    .line 207
    check-cast p1, Lamigo/widget/AmigoListView;

    .end local p1    # "parent":Landroid/widget/AdapterView;
    invoke-virtual {p1}, Lamigo/widget/AmigoListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p3, v2

    .line 209
    :cond_0
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 210
    .local v0, "item":Ljava/lang/Object;
    instance-of v2, v0, Lamigo/preference/AmigoPreference;

    if-nez v2, :cond_1

    .line 214
    :goto_0
    return-void

    :cond_1
    move-object v1, v0

    .line 212
    check-cast v1, Lamigo/preference/AmigoPreference;

    .line 213
    .local v1, "preference":Lamigo/preference/AmigoPreference;
    invoke-virtual {v1, p0}, Lamigo/preference/AmigoPreference;->performClick(Lamigo/preference/AmigoPreferenceScreen;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 237
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lamigo/preference/AmigoPreferenceScreen$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 239
    :cond_0
    invoke-super {p0, p1}, Lamigo/preference/AmigoPreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 248
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 243
    check-cast v0, Lamigo/preference/AmigoPreferenceScreen$SavedState;

    .line 244
    .local v0, "myState":Lamigo/preference/AmigoPreferenceScreen$SavedState;
    invoke-virtual {v0}, Lamigo/preference/AmigoPreferenceScreen$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lamigo/preference/AmigoPreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 245
    iget-boolean v1, v0, Lamigo/preference/AmigoPreferenceScreen$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, v0, Lamigo/preference/AmigoPreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lamigo/preference/AmigoPreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 223
    invoke-super {p0}, Lamigo/preference/AmigoPreferenceGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 224
    .local v2, "superState":Landroid/os/Parcelable;
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 225
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 232
    :goto_0
    return-object v1

    .line 229
    :cond_1
    new-instance v1, Lamigo/preference/AmigoPreferenceScreen$SavedState;

    invoke-direct {v1, v2}, Lamigo/preference/AmigoPreferenceScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 230
    .local v1, "myState":Lamigo/preference/AmigoPreferenceScreen$SavedState;
    const/4 v3, 0x1

    iput-boolean v3, v1, Lamigo/preference/AmigoPreferenceScreen$SavedState;->isDialogShowing:Z

    .line 231
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v1, Lamigo/preference/AmigoPreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_0
.end method
