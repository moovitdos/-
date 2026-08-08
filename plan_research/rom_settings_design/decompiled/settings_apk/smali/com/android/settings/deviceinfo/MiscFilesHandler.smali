.class public Lcom/android/settings/deviceinfo/MiscFilesHandler;
.super Landroid/app/ListActivity;
.source "MiscFilesHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;,
        Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

.field private mDeleteDataBar:Landroid/app/ProgressDialog;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsCancel:Z

.field private mItemsStateArray:Landroid/util/SparseBooleanArray;

.field private mNumBytesSelectedFormat:Ljava/lang/String;

.field private mNumSelectedFormat:Ljava/lang/String;

.field private mToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWarnDeleteFile:Landroid/app/AlertDialog;

.field private textView1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mToRemove:Ljava/util/ArrayList;

    .line 71
    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mDeleteDataBar:Landroid/app/ProgressDialog;

    .line 72
    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mActionMode:Landroid/view/ActionMode;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mIsCancel:Z

    .line 379
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MiscFilesHandler;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MiscFilesHandler;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mItemsStateArray:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MiscFilesHandler;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/deviceinfo/MiscFilesHandler;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MiscFilesHandler;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/deviceinfo/MiscFilesHandler;Landroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MiscFilesHandler;
    .param p1, "x1"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mItemsStateArray:Landroid/util/SparseBooleanArray;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MiscFilesHandler;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->textView1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MiscFilesHandler;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mIsCancel:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/settings/deviceinfo/MiscFilesHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MiscFilesHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mIsCancel:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MiscFilesHandler;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mNumSelectedFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MiscFilesHandler;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mNumBytesSelectedFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MiscFilesHandler;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MiscFilesHandler;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mWarnDeleteFile:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/deviceinfo/MiscFilesHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MiscFilesHandler;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mWarnDeleteFile:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MiscFilesHandler;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mDeleteDataBar:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/deviceinfo/MiscFilesHandler;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MiscFilesHandler;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mDeleteDataBar:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MiscFilesHandler;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mToRemove:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/deviceinfo/MiscFilesHandler;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MiscFilesHandler;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mToRemove:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 84
    const v1, 0x7f0906cc

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 85
    const v1, 0x7f0906cd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mNumSelectedFormat:Ljava/lang/String;

    .line 86
    const v1, 0x7f0906ce

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mNumBytesSelectedFormat:Ljava/lang/String;

    .line 87
    new-instance v1, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-direct {v1, p0, p0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;-><init>(Lcom/android/settings/deviceinfo/MiscFilesHandler;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    .line 88
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;

    .line 89
    const v1, 0x7f04008c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 90
    const v1, 0x7f0b0002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->textView1:Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 93
    .local v0, "lv":Landroid/widget/ListView;
    new-instance v1, Lcom/android/settings/deviceinfo/MiscFilesHandler$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$1;-><init>(Lcom/android/settings/deviceinfo/MiscFilesHandler;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 105
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 106
    new-instance v1, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    invoke-direct {v1, p0, p0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;-><init>(Lcom/android/settings/deviceinfo/MiscFilesHandler;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 107
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-virtual {p0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 509
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 510
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mItemsStateArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 511
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 113
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mWarnDeleteFile:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mWarnDeleteFile:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 117
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mIsCancel:Z

    if-nez v0, :cond_1

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mIsCancel:Z

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mDeleteDataBar:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mDeleteDataBar:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 124
    :cond_2
    return-void
.end method
