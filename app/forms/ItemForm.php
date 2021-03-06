<?php
declare(strict_types=1);

namespace LaundryApp\Forms;

use Phalcon\Forms\Element\File;
use Phalcon\Forms\Element\Hidden;
use Phalcon\Forms\Element\Password;
use Phalcon\Forms\Element\Select;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\TextArea;
use Phalcon\Forms\Form;
use Phalcon\Validation\Validator\Email;
use Phalcon\Validation\Validator\PresenceOf;

class ItemForm extends Form
{
    public function initialize($entity = null, array $options = [])
    {
        if (isset($options['edit'])) {
            $itemId = new Hidden('item_id');
            $this->add($itemId);
        }
        else {
            
        }
        
        $itemDetails = new TextArea('item_details');

        $itemDetails->setLabel('Detail Item');
        $itemDetails->setFilters(['striptags', 'string']);
        $itemDetails->addValidators([
            new PresenceOf(['message' => 'Anda harus menuliskan detail item anda'])
        ]);

        $itemType = new Text('item_type');

        $itemType->setLabel('Tipe Item');
        $itemType->setFilters(['striptags', 'string']);
        $itemType->addValidators([
            new PresenceOf(['message' => 'Anda harus menuliskan tipe item anda'])
        ]);

        $itemImage = new File('item_image');
        $itemImage->setLabel('Unggah foto item');
        
        $this->add($itemDetails);
        $this->add($itemType);
        $this->add($itemImage);
    }
}