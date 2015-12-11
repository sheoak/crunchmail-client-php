<?php
/**
 * Preview resource
 *
 * @author Yannick Huerre <dev@sheoak.fr>
 * @copyright (C) 2015 Oasiswork
 * @license MIT
 *
 */

namespace Crunchmail\Resources;

/**
 * Preview resource class
 */
class PreviewResource extends GenericResource
{
    /**
     * Send the preview to the given recipients.
     * You can only call it from a message entity
     *
     * @example $message->preview->send($email)
     *
     * @param array $recipients list of recipients for the test
     * @return \Crunchmail\Entity\GenericEntity
     */
    public function send($recipients)
    {
        $recipients = is_array($recipients) ? $recipients : [ $recipients ];

        // sending the preview via crunchmail API
        return $this->post(['to' => implode(',', $recipients) ]);
    }
}