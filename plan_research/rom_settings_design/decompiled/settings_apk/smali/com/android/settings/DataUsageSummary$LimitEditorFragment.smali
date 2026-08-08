.class public Lcom/android/settings/DataUsageSummary$LimitEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LimitEditorFragment"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method public constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 2419
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2436
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 2437
    .local v4, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v9

    check-cast v9, Lcom/android/settings/DataUsageSummary;

    .line 2438
    .local v9, "target":Lcom/android/settings/DataUsageSummary;
    invoke-static {v9}, Lcom/android/settings/DataUsageSummary;->access$1600(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;

    move-result-object v7

    .line 2440
    .local v7, "editor":Lcom/android/settings/net/NetworkPolicyEditor;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2441
    .local v10, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 2443
    .local v11, "dialogInflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040029

    const/4 v2, 0x0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 2445
    .local v15, "view":Landroid/view/View;
    const v1, 0x7f0b005b

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 2447
    .local v3, "bytesEdit":Landroid/widget/EditText;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "template"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkTemplate;

    .line 2448
    .local v8, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v7, v8}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v16

    .line 2449
    .local v16, "warningBytes":J
    invoke-virtual {v7, v8}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v12

    .line 2461
    .local v12, "limitBytes":J
    const-wide/16 v1, -0x1

    cmp-long v1, v16, v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, v12, v1

    if-lez v1, :cond_0

    const-wide/32 v1, 0x100000

    div-long v1, v16, v1

    long-to-int v1, v1

    add-int/lit8 v6, v1, 0x1

    .line 2462
    .local v6, "minValue":I
    :goto_0
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "LimitEditorFragment onCreateDialog: minValue = "

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    const-wide/32 v1, 0x100000

    div-long v1, v12, v1

    long-to-int v5, v1

    .line 2464
    .local v5, "limitValue":I
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 2465
    .local v14, "limitValueStr":Ljava/lang/String;
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2466
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 2468
    const v1, 0x7f090731

    invoke-virtual {v10, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2469
    invoke-virtual {v10, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2470
    new-instance v1, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$LimitEditorFragment;Landroid/widget/EditText;Landroid/content/Context;IILcom/android/settings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V

    invoke-virtual {v10, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2510
    const v18, 0x7f09072f

    new-instance v1, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$2;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$2;-><init>(Lcom/android/settings/DataUsageSummary$LimitEditorFragment;Landroid/widget/EditText;Landroid/content/Context;IILcom/android/settings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V

    move/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2543
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 2461
    .end local v5    # "limitValue":I
    .end local v6    # "minValue":I
    .end local v14    # "limitValueStr":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 2466
    .restart local v5    # "limitValue":I
    .restart local v6    # "minValue":I
    .restart local v14    # "limitValueStr":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public show(Lcom/android/settings/DataUsageSummary;)V
    .locals 4
    .param p1, "parent"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 2423
    invoke-virtual {p1}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2432
    :goto_0
    return-void

    .line 2425
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2426
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "template"

    invoke-static {p1}, Lcom/android/settings/DataUsageSummary;->access$1500(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2428
    new-instance v1, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {v1, v2}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;-><init>(Lcom/android/settings/DataUsageSummary;)V

    .line 2429
    .local v1, "dialog":Lcom/android/settings/DataUsageSummary$LimitEditorFragment;
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2430
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2431
    invoke-virtual {p1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "limitEditor"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
