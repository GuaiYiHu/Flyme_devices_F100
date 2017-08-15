.class Lamigo/preference/AmigoPreferenceGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "AmigoPreferenceGroupAdapter.java"

# interfaces
.implements Lamigo/preference/AmigoPreference$OnPreferenceChangeInternalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceGroupAdapter"


# instance fields
.field private final FRAME_LIST_BACKGROUND_BOTTOM:I

.field private final FRAME_LIST_BACKGROUND_FULL:I

.field private final FRAME_LIST_BACKGROUND_MIDDLE:I

.field private final FRAME_LIST_BACKGROUND_NULL:I

.field private final FRAME_LIST_BACKGROUND_TOP:I

.field private final FRAME_LIST_BACKGROUND_TOTAL:I

.field private mContext:Landroid/content/Context;

.field private mDisplayDivider:[Z

.field private mHandler:Landroid/os/Handler;

.field private mHasReturnedViewTypeCount:Z

.field private mIsGioneeStyle:Z

.field private volatile mIsSyncing:Z

.field private mPreferenceBackgroundIndexs:[I

.field private mPreferenceBackgroundRes:[I

.field private mPreferenceGroup:Lamigo/preference/AmigoPreferenceGroup;

.field private mPreferenceLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lamigo/preference/AmigoPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRunnable:Ljava/lang/Runnable;

.field private mTempPreferenceLayout:Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;


# direct methods
.method public constructor <init>(Lamigo/preference/AmigoPreferenceGroup;)V
    .locals 3
    .param p1, "preferenceGroup"    # Lamigo/preference/AmigoPreferenceGroup;

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    new-instance v0, Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;-><init>(Lamigo/preference/AmigoPreferenceGroupAdapter$1;)V

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mTempPreferenceLayout:Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;

    .line 47
    iput-boolean v2, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 49
    iput-boolean v2, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mIsSyncing:Z

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Lamigo/preference/AmigoPreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Lamigo/preference/AmigoPreferenceGroupAdapter$1;-><init>(Lamigo/preference/AmigoPreferenceGroupAdapter;)V

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    .line 143
    iput-boolean v2, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mIsGioneeStyle:Z

    .line 147
    iput v2, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->FRAME_LIST_BACKGROUND_NULL:I

    .line 148
    const/4 v0, 0x1

    iput v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->FRAME_LIST_BACKGROUND_FULL:I

    .line 149
    const/4 v0, 0x2

    iput v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->FRAME_LIST_BACKGROUND_TOP:I

    .line 150
    const/4 v0, 0x3

    iput v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->FRAME_LIST_BACKGROUND_MIDDLE:I

    .line 151
    const/4 v0, 0x4

    iput v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->FRAME_LIST_BACKGROUND_BOTTOM:I

    .line 152
    const/4 v0, 0x5

    iput v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->FRAME_LIST_BACKGROUND_TOTAL:I

    .line 83
    iput-object p1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mPreferenceGroup:Lamigo/preference/AmigoPreferenceGroup;

    .line 85
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mPreferenceGroup:Lamigo/preference/AmigoPreferenceGroup;

    invoke-virtual {v0, p0}, Lamigo/preference/AmigoPreferenceGroup;->setOnPreferenceChangeInternalListener(Lamigo/preference/AmigoPreference$OnPreferenceChangeInternalListener;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    .line 90
    invoke-direct {p0}, Lamigo/preference/AmigoPreferenceGroupAdapter;->syncMyPreferences()V

    .line 91
    return-void
.end method

.method public constructor <init>(Lamigo/preference/AmigoPreferenceGroup;Landroid/content/Context;Z)V
    .locals 3
    .param p1, "preferenceGroup"    # Lamigo/preference/AmigoPreferenceGroup;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isGioneeStyle"    # Z

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    new-instance v0, Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;-><init>(Lamigo/preference/AmigoPreferenceGroupAdapter$1;)V

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mTempPreferenceLayout:Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;

    .line 47
    iput-boolean v2, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 49
    iput-boolean v2, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mIsSyncing:Z

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Lamigo/preference/AmigoPreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Lamigo/preference/AmigoPreferenceGroupAdapter$1;-><init>(Lamigo/preference/AmigoPreferenceGroupAdapter;)V

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    .line 143
    iput-boolean v2, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mIsGioneeStyle:Z

    .line 147
    iput v2, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->FRAME_LIST_BACKGROUND_NULL:I

    .line 148
    const/4 v0, 0x1

    iput v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->FRAME_LIST_BACKGROUND_FULL:I

    .line 149
    const/4 v0, 0x2

    iput v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->FRAME_LIST_BACKGROUND_TOP:I

    .line 150
    const/4 v0, 0x3

    iput v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->FRAME_LIST_BACKGROUND_MIDDLE:I

    .line 151
    const/4 v0, 0x4

    iput v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->FRAME_LIST_BACKGROUND_BOTTOM:I

    .line 152
    const/4 v0, 0x5

    iput v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->FRAME_LIST_BACKGROUND_TOTAL:I

    .line 95
    iput-object p1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mPreferenceGroup:Lamigo/preference/AmigoPreferenceGroup;

    .line 97
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mPreferenceGroup:Lamigo/preference/AmigoPreferenceGroup;

    invoke-virtual {v0, p0}, Lamigo/preference/AmigoPreferenceGroup;->setOnPreferenceChangeInternalListener(Lamigo/preference/AmigoPreference$OnPreferenceChangeInternalListener;)V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    .line 102
    iput-object p2, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mContext:Landroid/content/Context;

    .line 103
    iput-boolean p3, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mIsGioneeStyle:Z

    .line 104
    iget-boolean v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mIsGioneeStyle:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lamigo/preference/AmigoPreferenceGroupAdapter;->getFrameListBackground(Landroid/content/Context;)V

    .line 108
    :cond_0
    invoke-direct {p0}, Lamigo/preference/AmigoPreferenceGroupAdapter;->syncMyPreferences()V

    .line 109
    return-void
.end method

.method static synthetic access$100(Lamigo/preference/AmigoPreferenceGroupAdapter;)V
    .locals 0
    .param p0, "x0"    # Lamigo/preference/AmigoPreferenceGroupAdapter;

    .prologue
    .line 17
    invoke-direct {p0}, Lamigo/preference/AmigoPreferenceGroupAdapter;->syncMyPreferences()V

    return-void
.end method

.method private addPreferenceClassName(Lamigo/preference/AmigoPreference;)V
    .locals 3
    .param p1, "preference"    # Lamigo/preference/AmigoPreference;

    .prologue
    .line 234
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lamigo/preference/AmigoPreferenceGroupAdapter;->createPreferenceLayout(Lamigo/preference/AmigoPreference;Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;)Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;

    move-result-object v1

    .line 235
    .local v1, "pl":Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;
    iget-object v2, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 238
    .local v0, "insertPos":I
    if-gez v0, :cond_0

    .line 240
    mul-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, v2, -0x1

    .line 241
    iget-object v2, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 243
    :cond_0
    return-void
.end method

.method private createPreferenceLayout(Lamigo/preference/AmigoPreference;Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;)Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;
    .locals 2
    .param p1, "preference"    # Lamigo/preference/AmigoPreference;
    .param p2, "in"    # Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;

    .prologue
    .line 226
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 227
    .local v0, "pl":Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;->access$202(Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Lamigo/preference/AmigoPreference;->getLayoutResource()I

    move-result v1

    # setter for: Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;->resId:I
    invoke-static {v0, v1}, Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;->access$302(Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;I)I

    .line 229
    invoke-virtual {p1}, Lamigo/preference/AmigoPreference;->getWidgetLayoutResource()I

    move-result v1

    # setter for: Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;->widgetResId:I
    invoke-static {v0, v1}, Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;->access$402(Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;I)I

    .line 230
    return-object v0

    .line 226
    .end local v0    # "pl":Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;
    :cond_0
    new-instance v0, Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;-><init>(Lamigo/preference/AmigoPreferenceGroupAdapter$1;)V

    goto :goto_0
.end method

.method private flattenPreferenceGroup(Ljava/util/List;Lamigo/preference/AmigoPreferenceGroup;)V
    .locals 5
    .param p2, "group"    # Lamigo/preference/AmigoPreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lamigo/preference/AmigoPreference;",
            ">;",
            "Lamigo/preference/AmigoPreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "preferences":Ljava/util/List;, "Ljava/util/List<Lamigo/preference/AmigoPreference;>;"
    invoke-virtual {p2}, Lamigo/preference/AmigoPreferenceGroup;->sortPreferences()V

    .line 199
    invoke-virtual {p2}, Lamigo/preference/AmigoPreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 200
    .local v0, "groupSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 201
    invoke-virtual {p2, v1}, Lamigo/preference/AmigoPreferenceGroup;->getPreference(I)Lamigo/preference/AmigoPreference;

    move-result-object v2

    .line 203
    .local v2, "preference":Lamigo/preference/AmigoPreference;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-boolean v4, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lamigo/preference/AmigoPreference;->hasSpecifiedLayout()Z

    move-result v4

    if-nez v4, :cond_0

    .line 206
    invoke-direct {p0, v2}, Lamigo/preference/AmigoPreferenceGroupAdapter;->addPreferenceClassName(Lamigo/preference/AmigoPreference;)V

    .line 209
    :cond_0
    instance-of v4, v2, Lamigo/preference/AmigoPreferenceGroup;

    if-eqz v4, :cond_1

    move-object v3, v2

    .line 210
    check-cast v3, Lamigo/preference/AmigoPreferenceGroup;

    .line 211
    .local v3, "preferenceAsGroup":Lamigo/preference/AmigoPreferenceGroup;
    invoke-virtual {v3}, Lamigo/preference/AmigoPreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 212
    invoke-direct {p0, p1, v3}, Lamigo/preference/AmigoPreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Lamigo/preference/AmigoPreferenceGroup;)V

    .line 216
    .end local v3    # "preferenceAsGroup":Lamigo/preference/AmigoPreferenceGroup;
    :cond_1
    invoke-virtual {v2, p0}, Lamigo/preference/AmigoPreference;->setOnPreferenceChangeInternalListener(Lamigo/preference/AmigoPreference$OnPreferenceChangeInternalListener;)V

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v2    # "preference":Lamigo/preference/AmigoPreference;
    :cond_2
    return-void
.end method

.method private getFrameListBackground(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 176
    const/4 v1, 0x5

    new-array v1, v1, [I

    iput-object v1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mPreferenceBackgroundRes:[I

    .line 177
    iget-object v1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mPreferenceBackgroundRes:[I

    aput v2, v1, v2

    .line 178
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 180
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x901001d

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 182
    iget-object v1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mPreferenceBackgroundRes:[I

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    aput v2, v1, v4

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x901001e

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 185
    iget-object v1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mPreferenceBackgroundRes:[I

    const/4 v2, 0x2

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    aput v3, v1, v2

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x901001f

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 188
    iget-object v1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mPreferenceBackgroundRes:[I

    const/4 v2, 0x3

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    aput v3, v1, v2

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x9010020

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 191
    iget-object v1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mPreferenceBackgroundRes:[I

    const/4 v2, 0x4

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    aput v3, v1, v2

    .line 192
    return-void
.end method

.method private shouldDisplayDivider(Ljava/util/List;)[Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lamigo/preference/AmigoPreference;",
            ">;)[Z"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "preferences":Ljava/util/List;, "Ljava/util/List<Lamigo/preference/AmigoPreference;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 157
    .local v2, "size":I
    if-eqz p1, :cond_0

    if-gtz v2, :cond_2

    .line 158
    :cond_0
    const/4 v1, 0x0

    .line 171
    :cond_1
    return-object v1

    .line 160
    :cond_2
    new-array v1, v2, [Z

    .line 161
    .local v1, "shouldDisplayDivider":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 162
    const/4 v3, 0x0

    aput-boolean v3, v1, v0

    .line 163
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lamigo/preference/AmigoPreferenceCategory;

    if-eqz v3, :cond_3

    .line 164
    if-lez v0, :cond_3

    .line 165
    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 161
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private syncMyPreferences()V
    .locals 2

    .prologue
    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget-boolean v1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mIsSyncing:Z

    if-eqz v1, :cond_0

    .line 115
    monitor-exit p0

    .line 138
    :goto_0
    return-void

    .line 118
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mIsSyncing:Z

    .line 119
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    .local v0, "newPreferenceList":Ljava/util/List;, "Ljava/util/List<Lamigo/preference/AmigoPreference;>;"
    iget-object v1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mPreferenceGroup:Lamigo/preference/AmigoPreferenceGroup;

    invoke-direct {p0, v0, v1}, Lamigo/preference/AmigoPreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Lamigo/preference/AmigoPreferenceGroup;)V

    .line 123
    iput-object v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 126
    iget-boolean v1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mIsGioneeStyle:Z

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-direct {p0, v1}, Lamigo/preference/AmigoPreferenceGroupAdapter;->shouldDisplayDivider(Ljava/util/List;)[Z

    move-result-object v1

    iput-object v1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mDisplayDivider:[Z

    .line 132
    :cond_1
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 134
    monitor-enter p0

    .line 135
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mIsSyncing:Z

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 137
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 119
    .end local v0    # "newPreferenceList":Ljava/util/List;, "Ljava/util/List<Lamigo/preference/AmigoPreference;>;"
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lamigo/preference/AmigoPreference;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 250
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 251
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamigo/preference/AmigoPreference;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoPreferenceGroupAdapter;->getItem(I)Lamigo/preference/AmigoPreference;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 255
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 256
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoPreferenceGroupAdapter;->getItem(I)Lamigo/preference/AmigoPreference;

    move-result-object v0

    invoke-virtual {v0}, Lamigo/preference/AmigoPreference;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v2, -0x1

    .line 316
    iget-boolean v3, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v3, :cond_0

    .line 317
    const/4 v3, 0x1

    iput-boolean v3, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 320
    :cond_0
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoPreferenceGroupAdapter;->getItem(I)Lamigo/preference/AmigoPreference;

    move-result-object v0

    .line 321
    .local v0, "preference":Lamigo/preference/AmigoPreference;
    invoke-virtual {v0}, Lamigo/preference/AmigoPreference;->hasSpecifiedLayout()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 333
    :cond_1
    :goto_0
    return v1

    .line 325
    :cond_2
    iget-object v3, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mTempPreferenceLayout:Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v0, v3}, Lamigo/preference/AmigoPreferenceGroupAdapter;->createPreferenceLayout(Lamigo/preference/AmigoPreference;Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;)Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mTempPreferenceLayout:Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;

    .line 327
    iget-object v3, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    iget-object v4, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mTempPreferenceLayout:Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;

    invoke-static {v3, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 328
    .local v1, "viewType":I
    if-gez v1, :cond_1

    move v1, v2

    .line 331
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoPreferenceGroupAdapter;->getItem(I)Lamigo/preference/AmigoPreference;

    move-result-object v1

    .line 263
    .local v1, "preference":Lamigo/preference/AmigoPreference;
    iget-object v3, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mTempPreferenceLayout:Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v1, v3}, Lamigo/preference/AmigoPreferenceGroupAdapter;->createPreferenceLayout(Lamigo/preference/AmigoPreference;Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;)Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mTempPreferenceLayout:Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;

    .line 267
    iget-object v3, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    iget-object v4, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mTempPreferenceLayout:Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;

    invoke-static {v3, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    .line 268
    const/4 p2, 0x0

    .line 272
    :cond_0
    iget-boolean v3, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mIsGioneeStyle:Z

    if-eqz v3, :cond_1

    .line 274
    iget-object v3, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mDisplayDivider:[Z

    aget-boolean v0, v3, p1

    .line 275
    .local v0, "display":Z
    invoke-virtual {v1, v0}, Lamigo/preference/AmigoPreference;->setShowDivider(Z)V

    .line 276
    invoke-virtual {v1, p2, p3}, Lamigo/preference/AmigoPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 281
    .end local v0    # "display":Z
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v1, p2, p3}, Lamigo/preference/AmigoPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 339
    iget-boolean v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v0, :cond_0

    .line 340
    iput-boolean v1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 343
    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 289
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 290
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoPreferenceGroupAdapter;->getItem(I)Lamigo/preference/AmigoPreference;

    move-result-object v0

    invoke-virtual {v0}, Lamigo/preference/AmigoPreference;->isSelectable()Z

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceChange(Lamigo/preference/AmigoPreference;)V
    .locals 0
    .param p1, "preference"    # Lamigo/preference/AmigoPreference;

    .prologue
    .line 301
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 302
    return-void
.end method

.method public onPreferenceHierarchyChange(Lamigo/preference/AmigoPreference;)V
    .locals 2
    .param p1, "preference"    # Lamigo/preference/AmigoPreference;

    .prologue
    .line 305
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 306
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 307
    return-void
.end method
