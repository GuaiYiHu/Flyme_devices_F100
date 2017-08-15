.class public abstract Lamigo/preference/AmigoPreferenceFragment;
.super Landroid/app/Fragment;
.source "AmigoPreferenceFragment.java"

# interfaces
.implements Lamigo/preference/AmigoPreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/preference/AmigoPreferenceFragment$OnPreferenceStartFragmentCallback;
    }
.end annotation


# static fields
.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mList:Lamigo/widget/AmigoListView;

.field private mListOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 37
    new-instance v0, Lamigo/preference/AmigoPreferenceFragment$1;

    invoke-direct {v0, p0}, Lamigo/preference/AmigoPreferenceFragment$1;-><init>(Lamigo/preference/AmigoPreferenceFragment;)V

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Lamigo/preference/AmigoPreferenceFragment$2;

    invoke-direct {v0, p0}, Lamigo/preference/AmigoPreferenceFragment$2;-><init>(Lamigo/preference/AmigoPreferenceFragment;)V

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 312
    new-instance v0, Lamigo/preference/AmigoPreferenceFragment$3;

    invoke-direct {v0, p0}, Lamigo/preference/AmigoPreferenceFragment$3;-><init>(Lamigo/preference/AmigoPreferenceFragment;)V

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lamigo/preference/AmigoPreferenceFragment;)V
    .locals 0
    .param p0, "x0"    # Lamigo/preference/AmigoPreferenceFragment;

    .prologue
    .line 21
    invoke-direct {p0}, Lamigo/preference/AmigoPreferenceFragment;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Lamigo/preference/AmigoPreferenceFragment;)Lamigo/widget/AmigoListView;
    .locals 1
    .param p0, "x0"    # Lamigo/preference/AmigoPreferenceFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mList:Lamigo/widget/AmigoListView;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 2

    .prologue
    .line 248
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceFragment;->getPreferenceScreen()Lamigo/preference/AmigoPreferenceScreen;

    move-result-object v0

    .line 249
    .local v0, "preferenceScreen":Lamigo/preference/AmigoPreferenceScreen;
    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceFragment;->getListView()Lamigo/widget/AmigoListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamigo/preference/AmigoPreferenceScreen;->bind(Lamigo/widget/AmigoListView;)V

    .line 252
    :cond_0
    return-void
.end method

.method private ensureList()V
    .locals 4

    .prologue
    .line 289
    iget-object v2, p0, Lamigo/preference/AmigoPreferenceFragment;->mList:Lamigo/widget/AmigoListView;

    if-eqz v2, :cond_0

    .line 310
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 293
    .local v1, "root":Landroid/view/View;
    if-nez v1, :cond_1

    .line 294
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Content view not yet created"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 296
    :cond_1
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 297
    .local v0, "rawListView":Landroid/view/View;
    instance-of v2, v0, Lamigo/widget/AmigoListView;

    if-nez v2, :cond_2

    .line 298
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Content has view with id attribute \'android.R.id.list\' that is not a AmigoListView class"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 302
    :cond_2
    check-cast v0, Lamigo/widget/AmigoListView;

    .end local v0    # "rawListView":Landroid/view/View;
    iput-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mList:Lamigo/widget/AmigoListView;

    .line 303
    iget-object v2, p0, Lamigo/preference/AmigoPreferenceFragment;->mList:Lamigo/widget/AmigoListView;

    if-nez v2, :cond_3

    .line 304
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Your content must have a AmigoListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 308
    :cond_3
    iget-object v2, p0, Lamigo/preference/AmigoPreferenceFragment;->mList:Lamigo/widget/AmigoListView;

    iget-object v3, p0, Lamigo/preference/AmigoPreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Lamigo/widget/AmigoListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 309
    iget-object v2, p0, Lamigo/preference/AmigoPreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lamigo/preference/AmigoPreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 243
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 191
    invoke-direct {p0}, Lamigo/preference/AmigoPreferenceFragment;->requirePreferenceManager()V

    .line 193
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceFragment;->getPreferenceScreen()Lamigo/preference/AmigoPreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lamigo/preference/AmigoPreferenceManager;->inflateFromIntent(Landroid/content/Intent;Lamigo/preference/AmigoPreferenceScreen;)Lamigo/preference/AmigoPreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoPreferenceFragment;->setPreferenceScreen(Lamigo/preference/AmigoPreferenceScreen;)V

    .line 194
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 3
    .param p1, "preferencesResId"    # I

    .prologue
    .line 203
    invoke-direct {p0}, Lamigo/preference/AmigoPreferenceFragment;->requirePreferenceManager()V

    .line 205
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceFragment;->getPreferenceScreen()Lamigo/preference/AmigoPreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lamigo/preference/AmigoPreferenceManager;->inflateFromResource(Landroid/content/Context;ILamigo/preference/AmigoPreferenceScreen;)Lamigo/preference/AmigoPreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoPreferenceFragment;->setPreferenceScreen(Lamigo/preference/AmigoPreferenceScreen;)V

    .line 207
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lamigo/preference/AmigoPreference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 230
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 233
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v0, p1}, Lamigo/preference/AmigoPreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lamigo/preference/AmigoPreference;

    move-result-object v0

    goto :goto_0
.end method

.method public getListView()Lamigo/widget/AmigoListView;
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0}, Lamigo/preference/AmigoPreferenceFragment;->ensureList()V

    .line 265
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mList:Lamigo/widget/AmigoListView;

    return-object v0
.end method

.method public getPreferenceManager()Lamigo/preference/AmigoPreferenceManager;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Lamigo/preference/AmigoPreferenceScreen;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v0}, Lamigo/preference/AmigoPreferenceManager;->getPreferenceScreen()Lamigo/preference/AmigoPreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public hasListView()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 270
    iget-object v4, p0, Lamigo/preference/AmigoPreferenceFragment;->mList:Lamigo/widget/AmigoListView;

    if-eqz v4, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v2

    .line 273
    :cond_1
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 274
    .local v1, "root":Landroid/view/View;
    if-nez v1, :cond_2

    move v2, v3

    .line 275
    goto :goto_0

    .line 277
    :cond_2
    const v4, 0x102000a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 278
    .local v0, "rawListView":Landroid/view/View;
    instance-of v4, v0, Lamigo/widget/AmigoListView;

    if-nez v4, :cond_3

    move v2, v3

    .line 279
    goto :goto_0

    .line 281
    :cond_3
    check-cast v0, Lamigo/widget/AmigoListView;

    .end local v0    # "rawListView":Landroid/view/View;
    iput-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mList:Lamigo/widget/AmigoListView;

    .line 282
    iget-object v4, p0, Lamigo/preference/AmigoPreferenceFragment;->mList:Lamigo/widget/AmigoListView;

    if-nez v4, :cond_0

    move v2, v3

    .line 283
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 90
    iget-boolean v2, p0, Lamigo/preference/AmigoPreferenceFragment;->mHavePrefs:Z

    if-eqz v2, :cond_0

    .line 91
    invoke-direct {p0}, Lamigo/preference/AmigoPreferenceFragment;->bindPreferences()V

    .line 94
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lamigo/preference/AmigoPreferenceFragment;->mInitDone:Z

    .line 96
    if-eqz p1, :cond_1

    .line 97
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 98
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceFragment;->getPreferenceScreen()Lamigo/preference/AmigoPreferenceScreen;

    move-result-object v1

    .line 100
    .local v1, "preferenceScreen":Lamigo/preference/AmigoPreferenceScreen;
    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v1, v0}, Lamigo/preference/AmigoPreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 105
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Lamigo/preference/AmigoPreferenceScreen;
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 148
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 150
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Lamigo/preference/AmigoPreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 151
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    new-instance v0, Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lamigo/preference/AmigoPreferenceManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    .line 74
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v0, p0}, Lamigo/preference/AmigoPreferenceManager;->setFragment(Lamigo/preference/AmigoPreferenceFragment;)V

    .line 75
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    const v0, 0x903000b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 131
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v0}, Lamigo/preference/AmigoPreferenceManager;->dispatchActivityDestroy()V

    .line 132
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mList:Lamigo/widget/AmigoListView;

    .line 123
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lamigo/preference/AmigoPreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 126
    return-void
.end method

.method public onPreferenceTreeClick(Lamigo/preference/AmigoPreferenceScreen;Lamigo/preference/AmigoPreference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Lamigo/preference/AmigoPreferenceScreen;
    .param p2, "preference"    # Lamigo/preference/AmigoPreference;

    .prologue
    .line 214
    invoke-virtual {p2}, Lamigo/preference/AmigoPreference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lamigo/preference/AmigoPreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lamigo/preference/AmigoPreferenceFragment$OnPreferenceStartFragmentCallback;

    invoke-interface {v0, p0, p2}, Lamigo/preference/AmigoPreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Lamigo/preference/AmigoPreferenceFragment;Lamigo/preference/AmigoPreference;)Z

    move-result v0

    .line 219
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceFragment;->getPreferenceScreen()Lamigo/preference/AmigoPreferenceScreen;

    move-result-object v1

    .line 139
    .local v1, "preferenceScreen":Lamigo/preference/AmigoPreferenceScreen;
    if-eqz v1, :cond_0

    .line 140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    .local v0, "container":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lamigo/preference/AmigoPreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 142
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 144
    .end local v0    # "container":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 110
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v0, p0}, Lamigo/preference/AmigoPreferenceManager;->setOnPreferenceTreeClickListener(Lamigo/preference/AmigoPreferenceManager$OnPreferenceTreeClickListener;)V

    .line 111
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 116
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v0}, Lamigo/preference/AmigoPreferenceManager;->dispatchActivityStop()V

    .line 117
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lamigo/preference/AmigoPreferenceManager;->setOnPreferenceTreeClickListener(Lamigo/preference/AmigoPreferenceManager$OnPreferenceTreeClickListener;)V

    .line 118
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public setPreferenceScreen(Lamigo/preference/AmigoPreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Lamigo/preference/AmigoPreferenceScreen;

    .prologue
    .line 167
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v0, p1}, Lamigo/preference/AmigoPreferenceManager;->setPreferences(Lamigo/preference/AmigoPreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mHavePrefs:Z

    .line 169
    iget-boolean v0, p0, Lamigo/preference/AmigoPreferenceFragment;->mInitDone:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lamigo/preference/AmigoPreferenceFragment;->postBindPreferences()V

    .line 173
    :cond_0
    return-void
.end method
