.class public abstract Lcom/instabug/featuresrequest/ui/b/c/e;
.super Lcom/instabug/library/core/ui/InstabugBaseFragment;
.source "FeaturesListFragment.java"

# interfaces
.implements Ld0/l/d/h/b/c/d;
.implements Ld0/l/d/b/a;
.implements Landroid/view/View$OnClickListener;
.implements Ld0/l/d/b/b;
.implements Ld0/l/d/h/b/c/i;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ERADICATE_FIELD_NOT_INITIALIZED"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/InstabugBaseFragment<",
        "Ld0/l/d/h/b/c/e;",
        ">;",
        "Ld0/l/d/h/b/c/d;",
        "Ld0/l/d/b/a;",
        "Landroid/view/View$OnClickListener;",
        "Ld0/l/d/b/b;",
        "Ld0/l/d/h/b/c/i;",
        "Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;"
    }
.end annotation


# instance fields
.field public h:Landroid/widget/ListView;

.field public i:Ld0/l/d/h/b/c/a;

.field public j:Landroid/view/ViewStub;

.field public k:Landroid/view/ViewStub;

.field public l:Z

.field public m:Landroid/view/View;

.field public n:Landroid/widget/ProgressBar;

.field public o:Landroid/widget/LinearLayout;

.field public p:Landroid/widget/ImageView;

.field public q:Z

.field public r:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->l:Z

    .line 3
    iput-boolean v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->q:Z

    .line 4
    iput-boolean v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->s:Z

    return-void
.end method


# virtual methods
.method public B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->k:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->k:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->k:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getViewContext()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getViewContext()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public G0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->h:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/ui/b/c/e;->K0()V

    .line 3
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/ui/b/c/e;->f()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->n:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_3

    .line 5
    check-cast v0, Ld0/l/d/h/b/c/e;

    .line 6
    iget-object v0, v0, Ld0/l/d/h/b/c/e;->i:Ld0/l/d/h/b/b;

    .line 7
    iget-boolean v0, v0, Ld0/l/d/h/b/b;->b:Z

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->h:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->n:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 12
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->s:Z

    return-void
.end method

.method public I0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->l:Z

    return v0
.end method

.method public abstract J0()Ld0/l/d/h/b/c/e;
.end method

.method public final K0()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->h:Landroid/widget/ListView;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->m:Landroid/view/View;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->q:Z

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 4
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/instabug/featuresrequest/R$layout;->ib_fr_pull_to_refresh_footer_view:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->m:Landroid/view/View;

    if-nez v0, :cond_2

    return-void

    .line 6
    :cond_2
    sget v1, Lcom/instabug/featuresrequest/R$id;->ib_loadmore_progressbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->n:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->m:Landroid/view/View;

    sget v1, Lcom/instabug/featuresrequest/R$id;->instabug_pbi_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->o:Landroid/widget/LinearLayout;

    .line 9
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->m:Landroid/view/View;

    sget v1, Lcom/instabug/featuresrequest/R$id;->image_instabug_logo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->p:Landroid/widget/ImageView;

    .line 10
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->n:Landroid/widget/ProgressBar;

    .line 11
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 12
    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 13
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 14
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast v0, Ld0/l/d/h/b/c/e;

    .line 15
    iget-object v0, v0, Ld0/l/d/h/b/c/e;->h:Ld0/l/d/h/b/c/d;

    if-eqz v0, :cond_4

    .line 16
    sget-object v1, Lcom/instabug/library/Feature;->WHITE_LABELING:Lcom/instabug/library/Feature;

    invoke-static {v1}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v1

    sget-object v2, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v1, v2, :cond_3

    .line 17
    invoke-interface {v0}, Ld0/l/d/h/b/c/d;->p()V

    goto :goto_0

    .line 18
    :cond_3
    invoke-interface {v0}, Ld0/l/d/h/b/c/d;->r()V

    :cond_4
    :goto_0
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->q:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "FeaturesListFragment"

    const-string v2, "exception occurring while setting up the loadMore views"

    .line 20
    invoke-static {v1, v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public L()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/ui/b/c/e;->U()V

    return-void
.end method

.method public final L0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->h:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/instabug/featuresrequest/ui/b/c/e$a;

    invoke-direct {v1, p0}, Lcom/instabug/featuresrequest/ui/b/c/e$a;-><init>(Lcom/instabug/featuresrequest/ui/b/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method public U()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->n:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public W()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/ui/b/c/e;->L0()V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Ld0/l/d/h/b/c/e;

    invoke-virtual {v0}, Ld0/l/d/h/b/c/e;->q()V

    :cond_0
    return-void
.end method

.method public a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lw0/n/a/k;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lw0/n/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lw0/n/a/k;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3
    new-instance v1, Lw0/n/a/a;

    invoke-direct {v1, v0}, Lw0/n/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 4
    sget v0, Lcom/instabug/featuresrequest/R$id;->instabug_fragment_container:I

    new-instance v2, Lcom/instabug/featuresrequest/ui/e/c;

    invoke-direct {v2}, Lcom/instabug/featuresrequest/ui/e/c;-><init>()V

    .line 5
    invoke-virtual {v1, v0, v2}, Lw0/n/a/c0;->b(ILandroidx/fragment/app/Fragment;)Lw0/n/a/c0;

    const-string v0, "search_features"

    .line 6
    invoke-virtual {v1, v0}, Lw0/n/a/c0;->f(Ljava/lang/String;)Lw0/n/a/c0;

    .line 7
    invoke-virtual {v1}, Lw0/n/a/c0;->g()I

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->j:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->i:Ld0/l/d/h/b/c/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/featuresrequest/R$layout;->ib_fr_features_list_fragment:I

    return v0
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->h:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/ui/b/c/e;->L0()V

    .line 4
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_1

    .line 5
    check-cast v0, Ld0/l/d/h/b/c/e;

    .line 6
    invoke-virtual {v0}, Ld0/l/d/h/b/c/e;->q()V

    :cond_1
    return-void
.end method

.method public initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    sget p1, Lcom/instabug/featuresrequest/R$id;->ib_empty_state_stub:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->j:Landroid/view/ViewStub;

    .line 2
    sget p1, Lcom/instabug/featuresrequest/R$id;->error_state_stub:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->k:Landroid/view/ViewStub;

    .line 3
    sget p1, Lcom/instabug/featuresrequest/R$id;->features_request_list:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->h:Landroid/widget/ListView;

    .line 4
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/ui/b/c/e;->L0()V

    .line 5
    sget p1, Lcom/instabug/featuresrequest/R$id;->swipeRefreshLayout:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->r:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 6
    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 7
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->r:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "my_posts"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->l:Z

    :cond_1
    if-eqz p2, :cond_5

    .line 10
    iget-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-nez p1, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iput-boolean v2, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->q:Z

    const-string p1, "empty_state"

    .line 12
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast p1, Ld0/l/d/h/b/c/e;

    .line 13
    invoke-virtual {p1}, Ld0/l/d/h/b/c/e;->m()I

    move-result p1

    if-nez p1, :cond_3

    .line 14
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/ui/b/c/e;->z()V

    :cond_3
    const-string p1, "error_state"

    .line 15
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast p1, Ld0/l/d/h/b/c/e;

    .line 16
    invoke-virtual {p1}, Ld0/l/d/h/b/c/e;->m()I

    move-result p1

    if-nez p1, :cond_4

    .line 17
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/ui/b/c/e;->B()V

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast p1, Ld0/l/d/h/b/c/e;

    invoke-virtual {p1}, Ld0/l/d/h/b/c/e;->m()I

    move-result p1

    if-lez p1, :cond_6

    .line 19
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/ui/b/c/e;->K0()V

    goto :goto_1

    .line 20
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/ui/b/c/e;->J0()Ld0/l/d/h/b/c/e;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    .line 21
    :cond_6
    :goto_1
    new-instance p1, Ld0/l/d/h/b/c/a;

    iget-object p2, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast p2, Ld0/l/d/h/b/c/e;

    invoke-direct {p1, p2, p0}, Ld0/l/d/h/b/c/a;-><init>(Ld0/l/d/h/b/c/e;Ld0/l/d/b/a;)V

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->i:Ld0/l/d/h/b/c/a;

    .line 22
    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->h:Landroid/widget/ListView;

    if-eqz p2, :cond_7

    .line 23
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_7
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->n:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lw0/n/a/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/instabug/featuresrequest/R$string;->feature_requests_error_state_sub_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instabug/featuresrequest/ui/b/c/e;->E(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->k:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget v1, Lcom/instabug/featuresrequest/R$id;->ib_empty_state_action:I

    if-ne p1, v1, :cond_1

    .line 4
    check-cast v0, Ld0/l/d/h/b/c/e;

    .line 5
    iget-object p1, v0, Ld0/l/d/h/b/c/e;->h:Ld0/l/d/h/b/c/d;

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Ld0/l/d/h/b/c/d;->a()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->k:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewStub;->getInflatedId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast p1, Ld0/l/d/h/b/c/e;

    .line 9
    iget-object v0, p1, Ld0/l/d/h/b/c/e;->h:Ld0/l/d/h/b/c/d;

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Ld0/l/d/h/b/c/d;->o()V

    .line 11
    invoke-virtual {p1}, Ld0/l/d/h/b/c/e;->q()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Ld0/l/d/h/b/c/e;

    invoke-virtual {v0}, Ld0/l/d/h/b/c/e;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->j:Landroid/view/ViewStub;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "empty_state"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->k:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    const-string v0, "error_state"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->o:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lw0/n/a/k;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->o:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->p:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeDark:Lcom/instabug/library/InstabugColorTheme;

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->p:Landroid/widget/ImageView;

    sget v1, Lcom/instabug/featuresrequest/R$drawable;->ibg_core_ic_instabug_logo:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->p:Landroid/widget/ImageView;

    const-string v1, "#FFFFFF"

    .line 6
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->p:Landroid/widget/ImageView;

    sget v1, Lcom/instabug/featuresrequest/R$drawable;->ibg_core_ic_instabug_logo:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->p:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lw0/n/a/k;

    move-result-object v1

    sget v2, Lcom/instabug/featuresrequest/R$color;->ib_fr_pbi_color:I

    invoke-static {v1, v2}, Lw0/h/b/a;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public u(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->r:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method

.method public v0(Lcom/instabug/featuresrequest/d/b;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lw0/n/a/k;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lw0/n/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lw0/n/a/k;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3
    new-instance v1, Lw0/n/a/a;

    invoke-direct {v1, v0}, Lw0/n/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 4
    sget v0, Lcom/instabug/featuresrequest/R$id;->instabug_fragment_container:I

    .line 5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "key_feature"

    .line 6
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 7
    new-instance p1, Lcom/instabug/featuresrequest/ui/c/a;

    invoke-direct {p1}, Lcom/instabug/featuresrequest/ui/c/a;-><init>()V

    .line 8
    iput-object p0, p1, Lcom/instabug/featuresrequest/ui/c/a;->A:Ld0/l/d/h/b/c/i;

    .line 9
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 10
    invoke-virtual {v1, v0, p1}, Lw0/n/a/c0;->b(ILandroidx/fragment/app/Fragment;)Lw0/n/a/c0;

    const-string p1, "feature_requests_details"

    .line 11
    invoke-virtual {v1, p1}, Lw0/n/a/c0;->f(Ljava/lang/String;)Lw0/n/a/c0;

    .line 12
    invoke-virtual {v1}, Lw0/n/a/c0;->g()I

    return-void
.end method

.method public w0(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->h:Landroid/widget/ListView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/ui/b/c/e;->L0()V

    .line 4
    iget-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz p1, :cond_1

    .line 5
    check-cast p1, Ld0/l/d/h/b/c/e;

    .line 6
    invoke-virtual {p1}, Ld0/l/d/h/b/c/e;->q()V

    :cond_1
    return-void
.end method

.method public z()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->j:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->j:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 4
    sget v1, Lcom/instabug/featuresrequest/R$id;->ib_empty_state_action:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 5
    sget v2, Lcom/instabug/featuresrequest/R$id;->ib_empty_state_icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 6
    sget v2, Lcom/instabug/featuresrequest/R$drawable;->ibg_fr_ic_features_empty_state:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v0

    invoke-static {v1, v0}, Ld0/l/c/e;->x(Landroid/view/View;I)V

    .line 8
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->j:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
