<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Produk;

class ProdukController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Produk';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Produk());

        $grid->column('id', __('Id'));
        $grid->column('nama', __('Nama'));
        $grid->column('kategori', __('Kategori'));
        $grid->column('deskripsi', __('Deskripsi'));
        $grid->column('harga', __('Harga'));
        $grid->column('stok', __('Stok'));
        $grid->column('gambar1', __('Gambar1'));
        $grid->column('gambar2', __('Gambar2'));
        $grid->column('gambar3', __('Gambar3'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Produk::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('nama', __('Nama'));
        $show->field('kategori', __('Kategori'));
        $show->field('deskripsi', __('Deskripsi'));
        $show->field('harga', __('Harga'));
        $show->field('stok', __('Stok'));
        $show->field('gambar1', __('Gambar1'));
        $show->field('gambar2', __('Gambar2'));
        $show->field('gambar3', __('Gambar3'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Produk());

        $form->text('nama', __('Nama'));
        $form->text('kategori', __('Kategori'));
        $form->textarea('deskripsi', __('Deskripsi'));
        $form->decimal('harga', __('Harga'));
        $form->number('stok', __('Stok'));
        $form->text('gambar1', __('Gambar1'));
        $form->text('gambar2', __('Gambar2'));
        $form->text('gambar3', __('Gambar3'));

        return $form;
    }
}
