/*
 * RmdTemplateDisplayNames.java
 *
 * Copyright (C) 2026 by the RStudio Simplified Chinese localization contributors
 *
 * This program is licensed to you under the terms of version 3 of the
 * GNU Affero General Public License. This program is distributed WITHOUT
 * ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
 * MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
 * AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
 */
package org.rstudio.studio.client.rmarkdown.ui;

import java.util.HashMap;
import java.util.Map;

import com.google.gwt.core.client.GWT;

import org.rstudio.studio.client.rmarkdown.RMarkdownConstants;

public final class RmdTemplateDisplayNames
{
   public static String formatLabel(String templateName,
                                    String formatName,
                                    String fallbackUiName)
   {
      return resolveLabel(formatLabels_,
                          formatIdentity(templateName, formatName),
                          fallbackUiName,
                          formatName);
   }

   public static String categoryLabel(String rawCategory,
                                      String fallbackCategory)
   {
      return resolveLabel(categoryLabels_,
                          rawCategory,
                          fallbackCategory,
                          rawCategory);
   }

   public static String optionLabel(String templateName,
                                    String selectedFormatName,
                                    String optionName,
                                    String optionFormat,
                                    String fallbackUiName)
   {
      if (hasText(optionFormat) && hasText(selectedFormatName) &&
          !optionFormat.equals(selectedFormatName))
         return fallbackLabel(fallbackUiName, optionName);

      String label = optionLabels_.get(optionIdentity(
            templateName, selectedFormatName, optionName, optionFormat));
      if (!hasText(label))
         label = optionLabels_.get(optionIdentity(
               templateName, "", optionName, optionFormat));
      if (!hasText(label))
         label = optionLabels_.get(optionIdentity(
               templateName, "", optionName, ""));
      if (!hasText(label))
         label = optionLabels_.get(optionIdentity(
               "", "", optionName, optionFormat));
      if (!hasText(label))
         label = optionLabels_.get(optionIdentity(
               "", "", optionName, ""));
      return hasText(label) ? label : fallbackLabel(fallbackUiName, optionName);
   }

   private static Map<String, String> createFormatLabels()
   {
      Map<String, String> labels = new HashMap<>();
      addFormatLabel(labels, "Document", "html_notebook",
                     constants_.rmdFormatHtmlNotebookLabel());
      addFormatLabel(labels, "Document", "html_document",
                     constants_.rmdFormatHtmlDocumentLabel());
      addFormatLabel(labels, "Document", "pdf_document",
                     constants_.rmdFormatPdfDocumentLabel());
      addFormatLabel(labels, "Document", "word_document",
                     constants_.rmdFormatWordDocumentLabel());
      addFormatLabel(labels, "Presentation", "ioslides_presentation",
                     constants_.rmdFormatIoslidesPresentationLabel());
      addFormatLabel(labels, "Presentation", "slidy_presentation",
                     constants_.rmdFormatSlidyPresentationLabel());
      addFormatLabel(labels, "Presentation", "beamer_presentation",
                     constants_.rmdFormatBeamerPresentationLabel());
      addFormatLabel(labels, "Presentation", "powerpoint_presentation",
                     constants_.rmdFormatPowerPointPresentationLabel());
      return labels;
   }

   private static Map<String, String> createCategoryLabels()
   {
      Map<String, String> labels = new HashMap<>();
      addCategoryLabel(labels, "General", constants_.rmdCategoryGeneralLabel());
      addCategoryLabel(labels, "Advanced", constants_.rmdCategoryAdvancedLabel());
      addCategoryLabel(labels, "Figures", constants_.rmdCategoryFiguresLabel());
      return labels;
   }

   private static Map<String, String> createOptionLabels()
   {
      Map<String, String> labels = new HashMap<>();

      addOptionLabel(labels, "", "", "toc", "",
                     constants_.rmdOptionTableOfContentsLabel());
      addOptionLabel(labels, "Document", "", "toc_depth", "",
                     constants_.rmdOptionTableOfContentsDepthLabel());
      addOptionLabel(labels, "Document", "", "self_contained", "",
                     constants_.rmdOptionHtmlDocumentSelfContainedLabel());
      addOptionLabel(labels, "Document", "", "theme", "",
                     constants_.rmdOptionHtmlDocumentThemeLabel());
      addOptionLabel(labels, "", "", "highlight", "",
                     constants_.rmdOptionSyntaxHighlightingLabel());
      addOptionLabel(labels, "Document", "", "df_print", "",
                     constants_.rmdOptionDataFramePrintLabel());
      addOptionLabel(labels, "", "", "smart", "",
                     constants_.rmdOptionSmartPunctuationLabel());
      addOptionLabel(labels, "Document", "", "number_sections", "",
                     constants_.rmdOptionNumberSectionsLabel());
      addOptionLabel(labels, "Document", "", "latex_engine", "",
                     constants_.rmdOptionLatexEngineLabel());
      addOptionLabel(labels, "", "", "keep_md", "",
                     constants_.rmdOptionKeepMarkdownLabel());
      addOptionLabel(labels, "", "", "keep_tex", "",
                     constants_.rmdOptionKeepTexLabel());
      addOptionLabel(labels, "", "", "fig_width", "",
                     constants_.rmdOptionFigureWidthLabel());
      addOptionLabel(labels, "", "", "fig_height", "",
                     constants_.rmdOptionFigureHeightLabel());
      addOptionLabel(labels, "", "", "fig_crop", "",
                     constants_.rmdOptionCropFiguresLabel());
      addOptionLabel(labels, "", "", "fig_caption", "",
                     constants_.rmdOptionFigureCaptionsLabel());
      addOptionLabel(labels, "", "", "css", "",
                     constants_.rmdOptionCssFileLabel());
      addOptionLabel(labels, "Document", "", "code_folding", "",
                     constants_.rmdOptionCodeFoldingLabel());
      addOptionLabel(labels, "Presentation", "", "center", "",
                     constants_.rmdOptionSlideVerticalCenterLabel());
      addOptionLabel(labels, "Presentation", "", "incremental", "",
                     constants_.rmdOptionSlideIncrementalLabel());
      addOptionLabel(labels, "Presentation", "", "self_contained", "",
                     constants_.rmdOptionHtmlPresentationSelfContainedLabel());
      addOptionLabel(labels, "Presentation", "", "theme", "",
                     constants_.rmdOptionPresentationThemeLabel());
      addOptionLabel(labels, "Presentation", "", "transition", "",
                     constants_.rmdOptionSlideTransitionLabel());
      addOptionLabel(labels, "Presentation", "ioslides_presentation",
                     "transition", "ioslides_presentation",
                     constants_.rmdOptionIoslidesTransitionSpeedLabel());
      addOptionLabel(labels, "Presentation", "", "widescreen", "",
                     constants_.rmdOptionWidescreenLabel());
      addOptionLabel(labels, "Presentation", "", "smaller", "",
                     constants_.rmdOptionSmallerTextLabel());
      addOptionLabel(labels, "Presentation", "", "fonttheme", "",
                     constants_.rmdOptionBeamerFontThemeLabel());
      addOptionLabel(labels, "Presentation", "", "colortheme", "",
                     constants_.rmdOptionBeamerColorThemeLabel());
      addOptionLabel(labels, "Presentation", "", "logo", "",
                     constants_.rmdOptionSlideLogoLabel());
      addOptionLabel(labels, "Presentation", "", "fig_retina", "",
                     constants_.rmdOptionFigureRetinaLabel());
      return labels;
   }

   private static void addFormatLabel(Map<String, String> labels,
                                      String templateName,
                                      String formatName,
                                      String label)
   {
      labels.put(formatIdentity(templateName, formatName), label);
   }

   private static void addCategoryLabel(Map<String, String> labels,
                                        String rawCategory,
                                        String label)
   {
      labels.put(rawCategory, label);
   }

   private static void addOptionLabel(Map<String, String> labels,
                                      String templateName,
                                      String selectedFormatName,
                                      String optionName,
                                      String optionFormat,
                                      String label)
   {
      labels.put(optionIdentity(templateName,
                                selectedFormatName,
                                optionName,
                                optionFormat),
                 label);
   }

   private static String formatIdentity(String templateName, String formatName)
   {
      return templateName + "::" + formatName;
   }

   private static String optionIdentity(String templateName,
                                        String selectedFormatName,
                                        String optionName,
                                        String optionFormat)
   {
      return templateName + "::" + selectedFormatName + "::" +
             optionName + "::" + optionFormat;
   }

   private static boolean hasText(String value)
   {
      return value != null && value.length() > 0;
   }

   private static String fallbackLabel(String fallbackLabel,
                                       String identityFallback)
   {
      if (hasText(fallbackLabel))
         return fallbackLabel;
      if (hasText(identityFallback))
         return identityFallback;
      return "Unknown";
   }

   private static String resolveLabel(Map<String, String> labels,
                                      String identity,
                                      String fallbackLabel,
                                      String identityFallback)
   {
      String label = labels.get(identity);
      if (label != null && label.length() > 0)
         return label;
      if (fallbackLabel != null && fallbackLabel.length() > 0)
         return fallbackLabel;
      if (identityFallback != null && identityFallback.length() > 0)
         return identityFallback;
      return "Unknown";
   }

   private static final RMarkdownConstants constants_ =
         GWT.create(RMarkdownConstants.class);
   private static final Map<String, String> formatLabels_ = createFormatLabels();
   private static final Map<String, String> categoryLabels_ = createCategoryLabels();
   private static final Map<String, String> optionLabels_ = createOptionLabels();

   private RmdTemplateDisplayNames()
   {
   }
}
